---
layout: post
title: wireUpFrameBusting
---
De titel zegt het al helemaal. _"Mijn pagina mag niet naar behoren werken in een frame"._

Ik heb net even gekeken waarom [delicious submit](http://delicious.com/save?v=4&url=example.com&title=) niet meer werkt vanuit een frame; [blijkbaar](http://l.yimg.com/hr/1124/del-frontend-min.js) vinden ze niet meer zo tof en zorgen ze er via javascript voor dat de submit buttons disabled/hidden zijn wanneer:

 `top.location.hostname!=self.location.hostname`.

<a href="http://www.flickr.com/photos/atog/3443952165/" title="Delicious no buttons by atog, on Flickr"><img src="http://farm4.static.flickr.com/3402/3443952165_ae8235ab0e.jpg" width="500" height="58" alt="Delicious no buttons" /></a>

<a href="http://www.flickr.com/photos/atog/3444769728/" title="Delicious with buttons by atog, on Flickr"><img src="http://farm4.static.flickr.com/3594/3444769728_d199f34d15.jpg" width="500" height="61" alt="Delicious with buttons" /></a>

Frames trekken op niets. I know. Maar in het geval van [Shareomatic](http://shareomatic.com) is het toch een handige oplossing voor het probleem. Je wil immers enkel een submit form invullen. Het is allemaal de schuld van [die DiggBar](http://daringfireball.net/2009/04/how_to_block_the_diggbar) [mijn gedacht](http://www.flickr.com/photos/atog/3435113191/). ;)

We gaan hier in elk geval een oplossing voor moeten bedenken.