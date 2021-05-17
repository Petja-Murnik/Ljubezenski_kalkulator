% rebase( 'base.tpl', title = 'igra')

<h2>Ljubezenski kalkulator</h2>

<blockquote>
  V primerna mesta napiši imena tebe, tvoje simpatije in gesla, po katerem naj ti izračunam procentualno kompatibilnost.
</blockquote>
<form action="/igra/" method="post">Tvoje ime:
    <input type="text" name="oseba1" autofocus>
</form>

<form action="/igra/" method="post">Ime tvoje simpatije:
    <input type="text" name="oseba2" autofocus>
</form>

<form action="/igra/" method="post">Geslo:
    <input type="text" name="geslo" autofocus>
    <button type="submit">Oddaj!</button>
</form>
