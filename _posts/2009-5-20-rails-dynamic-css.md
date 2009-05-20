---
layout: post
title: Rails and dynamic css
---
Raar, maar vandaag was het de eerste keer dat ik het nodig had; een dynamische css file. In [Rails](http://rubyonrails.org/) weliswaar. Door gebruik te maken van de routes  `:format` parameter is het eigenlijk iets van niets<sup>1</sup>.

**routes.rb**
{% highlight ruby %}
map.dynamic_stylesheet "/stylesheets/dynamic.:format", 
			:controller => "some", 
			:action => "index"
{% endhighlight %}

**some_controller.rb**
{% highlight ruby %}
def index
  @color = "#fff"
end
{% endhighlight %}

**application.erb.html**
{% highlight erb %}
<%= stylesheet_link_tag dynamic_stylesheet_path("css") %>
{% endhighlight %}

**index.css.erb**
{% highlight erb %}
body { background-color: <%= @color %>;}
{% endhighlight %}

<small>1: zoals we zeggen.</small>
<div style="clear:both;">&nbsp;</div>