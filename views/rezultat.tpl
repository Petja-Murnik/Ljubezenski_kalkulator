% rebase( 'base.tpl', title = 'igra')

<h1><big><b><center>Ljubezenski kalkulator</center></b></big></h1>

<blockquote>
    S tvojo simpatijo se ujemata {{rezultat}} %
  </blockquote>

  <form action="/nova_igra/" method="POST">
    <button type="submit">Nova igra</button>
  </form>
  
<form action="/" method="GET">
  <button type="submit">Začetna stran</button>
</form>