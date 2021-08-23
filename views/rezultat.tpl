% rebase( 'base.tpl', title = 'igra')

<h2>Ljubezenski kalkulator</h2>

<blockquote>
    S tvojo simpatijo se ujemata {{rezultat}} %
  </blockquote>

  <form action="/nova_igra/" method="POST">
    <button type="submit">Nova igra</button>
  </form>
  
<form action="/" method="GET">
  <button type="submit">Začetna stran</button>
</form>