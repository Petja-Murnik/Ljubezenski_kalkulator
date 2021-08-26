% rebase( 'base.tpl', title = 'igra')

<h1><big><b><center>Ljubezenski kalkulator</center></b></big></h1>

% if rezultat >= 70 :
  <blockquote>
    S tvojo simpatijo se ujemata ogromnih <b>{{rezultat}} %</b> !!
    Oženi jo čimprej !
  </blockquote>

% elif rezultat >= 40 :
  <blockquote>
    S tvojo simpatijo se ujemata solidnih <b>{{rezultat}} %</b> !
  </blockquote>

% elif rezultat >= 20:
  <blockquote>
    S tvojo simpatijo se ujemata <b>{{rezultat}} %</b> .
  </blockquote>

% else :
<blockquote>
  S tvojo simpatijo se ujemata zgolj <b>{{rezultat}} %</b> .
  Poišči si novo simpatijo!
</blockquote>

% end

  <form action="/nova_igra/" method="POST">
    <button type="submit">Nova igra</button>
  </form>
  
<form action="/" method="GET">
  <button type="submit">Začetna stran</button>
</form>