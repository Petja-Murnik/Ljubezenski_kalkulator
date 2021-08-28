% rebase( 'base.tpl', title = 'igra')

<h1><big><b><center>Ljubezenski kalkulator</center></b></big></h1>

% if oseba1 == "" or oseba2 =="":
  <blockquote>
    Upsala ... Izgleda kot da vneseni podatki niso v redu! Poskusi ponovno!
  </blockquote>
  
% elif rezultat >= 70 :
  <a><img src = "/img/poroci.jpg" alt = "Poroka" height="400" width="250"></a>
  <blockquote>
    S tvojo simpatijo se ujemata ogromnih <b>{{rezultat}} %</b> !!
    Oženi/omoži jo čimprej !
  </blockquote>
  <a href = "/princip_racunanja/">Kako sem to izračunal ?</a>

% elif rezultat >= 40 :

  <blockquote>
    S tvojo simpatijo se ujemata solidnih <b>{{rezultat}} %</b> !
  </blockquote>
  <a href = "/princip_racunanja/">Kako sem to izračunal ?</a>

% elif rezultat >= 20:

  <blockquote>
    S tvojo simpatijo se ujemata <b>{{rezultat}} %</b> .
  </blockquote>
  <a href = "/princip_racunanja/">Kako sem to izračunal ?</a>

% else :
  <a><img src = "/img/slabo.jpg" alt = "Slabo" height="400" width="250"></a>
  <blockquote>
    S tvojo simpatijo se ujemata zgolj <b>{{rezultat}} %</b> .
    Poišči si novo simpatijo!
  </blockquote>
  <a href = "/princip_racunanja/">Kako sem to izračunal ?</a>

% end

  <form action="/nova_igra/" method="POST">
    <button type="submit">Nova igra</button>
  </form>
  
  <form action="/" method="GET">
    <button type="submit">Začetna stran</button>
  </form>