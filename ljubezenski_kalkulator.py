import bottle
import model

bottle.TEMPLATE_PATH.insert(0,"C:\\Users\\petja\\OneDrive\\Dokumenti\\UVP\\Ljubezenski_kalkulator\\views")
@bottle.get('/')
def osnovna_stran():
    return bottle.template("index.tpl")

@bottle.post("/nova_igra/")
def nova_igra():
    return bottle.template("igra.tpl")

@bottle.get("/igra/")
def pokazi_igro():
    return bottle.template("igra.tpl")

@bottle.post("/igra/")
def pokazi_rezultat():
    return bottle.template("rezultat.tpl")
    



bottle.run(reloader=True, debug=True)