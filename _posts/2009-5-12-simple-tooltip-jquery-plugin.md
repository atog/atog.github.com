---
layout: post
title: Simple tooltip jQuery plugin
---
Ik heb een object met een description attribute. Wanneer je dan een link legt naar de details van dat object is het in dit geval wel tof om ook al een stuk van (of de volledige) description te laten zien _on hover_.

Als fan van [jQuery](http://jquery.com/), ben ik zoek gegaan naar een plugin. [Simple tooltip](http://dev.mariusilie.net/content/simple-tooltip-jquery-plugin) leek me wel ok.

**Usage**

{% highlight html %}
<a class="link-with-tooltip" href="your.link.here" 
	title="Your fantastic description">Tada</a>
{% endhighlight %}

{% highlight javascript %}
$("a.link-with-tooltip").simpletooltip();
{% endhighlight %}

**Problem**

Works like a charm! Er was echter nog een klein probleem. Wanneer de text in het title attribute te lang is verdwijnt ie gewoon links van het scherm, [zoals in dit screenshot](http://dev.mariusilie.net/content/simple-tooltip-jquery-plugin#comment-18).

**Solution**

Ik heb dat opgelost door een `max-width` op `#simpletooltip` te zetten.

{% highlight css %}
max-width: 400px;
{% endhighlight %}

<small>/me happy</small>

<div style="clear:both;">&nbsp;</div>