% rebase( 'base.tpl', title = 'igra')

<h1><big><b><center>Ljubezenski kalkulator</center></b></big></h1>

% if oseba1 == "" or oseba2 =="":
  <div>
    Upsala ... Izgleda kot da vneseni podatki niso v redu! Poskusi ponovno!
  </div>
  
% elif rezultat >= 80 :
  <a><img src = "/img/poroka1.png" alt = "Poroka" height="450" width="280"></a>
  <div>
    S tvojo simpatijo se ujemata ogromnih <b>{{rezultat}} %</b> !!
    Oženi/omoži jo čimprej !
  </div>
  <a href = "/princip_racunanja/">Princip izračuna.</a>

% elif rezultat >= 40 :
  <a><img src = "/img/vredu.jpg" alt = "Solidno" height="450" width="280"></a>
  <div>
    S tvojo simpatijo se ujemata solidnih <b>{{rezultat}} %</b> !
  </div>
  <a href = "/princip_racunanja/">Princip izračuna.</a>

% else :
  <a><img src = "/img/slabo.jpg" alt = "Slabo" height="400" width="250"></a>
  <div>
    S tvojo simpatijo se ujemata zgolj <b>{{rezultat}} %</b> .
    Poišči si novo simpatijo!
  </div>
  <a href = "/princip_racunanja/">Princip izračuna.</a>

% end

  <form action="/nova_igra/" method="POST">
    <button type="submit">Nova igra</button>
  </form>
  
  <form action="/" method="GET">
    <button type="submit">Začetna stran</button>
  </form>