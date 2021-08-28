% rebase( 'base.tpl', title = 'igra')

<h1><big><b><center>Ljubezenski kalkulator</center></b></big></h1>

<a><img src="/img/ljubezen_slika.jpg" alt="Srček" height="500" width="400"></a>

<div>
  V primerna mesta napiši imena tebe, tvoje simpatije in gesla, po katerem naj ti izračunam procentualno kompatibilnost.
</div>
<div>
  Če ne veš katero geslo bi uporabil, lahko pustiš polje prazno in bom uporabil geslo "LOVES". 
</div>

<form action="/igra/" method="post">
    <b>Tvoje ime:</b>
    <input type="text" name="oseba1" autofocus autocomplete="off">
    <b>Ime tvoje simpatije:</b>
    <input type="text" name="oseba2" autofocus autocomplete="off">
    <b>Geslo:</b>
    <input type="text" name="geslo" autofocus autocomplete="off">
    <button type="submit">Izračunaj!</button>
</form>

<a href = "/">Nazaj na začetno stran</a>
