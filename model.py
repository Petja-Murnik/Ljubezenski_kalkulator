
class Ljubezen:
    def __init__(self, oseba1, oseba2, geslo):
        self.oseba1 = oseba1
        self.oseba2 = oseba2
        self.geslo = geslo
    
    @staticmethod
    def razbij_na_stevke(stevilo):
        seznam = []
        if stevilo < 10:
            return [stevilo]
        else :
            enice = stevilo % 10
            return razbij_na_stevke(stevilo//10) + [enice]

    @staticmethod
    def prestej_crke(geslo, niz):
        nizek = niz.upper()
        seznam = []
        for i in geslo.upper():
            seznam = seznam +[str(nizek).count(i)]
        return seznam

    @staticmethod
    def sestej_stevke(stevke):
        seznam = []
        i = 0
        while i < (len(stevke) -1):
            vsota= stevke[i] + stevke[i+1]
            if vsota >= 10 :
                seznam = seznam + [1] + [vsota%10]
                i = i + 1
            else:
                seznam = seznam + [vsota]
                i = i + 1
        return seznam
   
    def ujemanje(self):
        skupno_ime = self.oseba1 + ' ' + self.oseba2
        stevkice = Ljubezen.prestej_crke(self.geslo, skupno_ime)
        while len(stevkice) > 2 :
            stevkice = Ljubezen.sestej_stevke(stevkice)
        return int(stevkice[0])*10 + int(stevkice[1])

def nov_izračun():
    ime1 = input("Tvoje ime >")
    ime2 = input("Ime tvoje simpatije >")
    geslo = input("Geslo po katerem, naj ti izračunam (priporočam 'LOVES') >")
    return Ljubezen(ime1, ime2, geslo="LOVES")