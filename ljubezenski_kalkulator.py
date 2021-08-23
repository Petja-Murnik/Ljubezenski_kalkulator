
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
    oseba1 = bottle.request.forms.getunicode("oseba1")
    oseba2 = bottle.request.forms.getunicode("oseba2")
    geslo = bottle.request.forms.getunicode("geslo")
    waw = model.Ljubezen(oseba1, oseba2, geslo="LOVES") 
    rezultat = waw.ujemanje()
    return bottle.template("rezultat.tpl",
                            oseba1 = oseba1 ,
                            oseba2 = oseba2,
                            geslo = geslo,
                            rezultat = rezultat)

@bottle.get("/princip_racunanja/")
def pokazi_princip():
    return bottle.template("pojasnila.tpl")

bottle.run(reloader=True, debug=True)