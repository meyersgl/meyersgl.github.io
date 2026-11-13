import sys, os, subprocess, time, uno
from com.sun.star.beans import PropertyValue
def prop(n, v):
    p = PropertyValue(); p.Name = n; p.Value = v; return p
src, dst = map(os.path.abspath, sys.argv[1:3])
port = 2002
proc = subprocess.Popen(['soffice','--headless','--invisible','--nologo','--norestore',f'--accept=socket,host=127.0.0.1,port={port};urp;'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
local = uno.getComponentContext()
resolver = local.ServiceManager.createInstanceWithContext('com.sun.star.bridge.UnoUrlResolver', local)
ctx = None
for _ in range(60):
    try:
        ctx = resolver.resolve(f'uno:socket,host=127.0.0.1,port={port};urp;StarOffice.ComponentContext'); break
    except Exception:
        time.sleep(0.5)
desktop = ctx.ServiceManager.createInstanceWithContext('com.sun.star.frame.Desktop', ctx)
doc = desktop.loadComponentFromURL(uno.systemPathToFileUrl(src), '_blank', 0, (prop('Hidden', True),))
tables = doc.getTextTables()
for t in range(tables.getCount()):
    rows = tables.getByIndex(t).getRows()
    for r in range(rows.getCount()):
        try: rows.getByIndex(r).IsSplitAllowed = False
        except Exception: pass
idx = doc.getDocumentIndexes(); n = idx.getCount()
for _ in range(2):
    for i in range(n): idx.getByIndex(i).update()
    doc.refresh()
doc.storeToURL(uno.systemPathToFileUrl(dst), (prop('FilterName','writer_pdf_Export'),))
for f in (lambda: doc.close(True), desktop.terminate):
    try: f()
    except Exception: pass
try: proc.wait(timeout=30)
except Exception: proc.kill()
print('wrote', dst, 'indexes updated:', n)
