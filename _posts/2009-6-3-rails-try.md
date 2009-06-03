---
layout: post
title: Rails try
---
`try`, één van die kleine nieuwigheidjes dat ik gemist heb met de [Rails 2.3](http://railsapi.com/doc/v2.3.2/classes/Object.html#M000130) release. _Gelukkiglijk_ gevonden via een [railscast](http://railscasts.com/episodes/152-rails-2-3-extras).

**What?** 

[Uit de documentatie](http://railsapi.com/doc/v2.3.2/classes/Object.html#M000130):

> Invokes the method identified by the symbol method, passing it any arguments and/or the block specified, just like the regular Ruby Object#send does.
> Unlike that method however, a NoMethodError exception will not be raised and nil will be returned instead, if the receiving object is a nil object or NilClass.

{% highlight ruby %}
someobject.try(:some_method)
{% endhighlight %}

**eh?**

Bovenstaande gooit normaal een exception wanneer `someobject` nil is. Door het gebruik van `try` krijgen we simpelweg nil terug.

**Don't overdo it.**