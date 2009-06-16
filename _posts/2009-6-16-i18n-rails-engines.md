---
layout: post
title: i18n and Rails Engines
---
Rails Engines, wie zijn ze? Wat doen ze? Maar vooral: hoe?

> Rails 2.3 brings us much of the same functionality as the Rails Engines plugin. Learn how to embed one application into another in [this episode](http://railscasts.com/episodes/149-rails-engines).

Engines laten toe om de ene applicatie te gebruiken in een andere onder de vorm van een plugin. Zoals [de screencast](http://railscasts.com/episodes/149-rails-engines) laat zien kan je simpelweg de `app` folder van een rails app integreren in de plugin van een andere. Alle models, controllers en views zijn beschikbaar. Heb je toch nog wat custom functionaliteit nodig dan kan je die toevoegen in de 'eigenlijke' app door het/de specifieke model/controller/view opnieuw te definieren. Hetzelfde voor de `routes`; heb je in de plugin-directory de `routes.rb` file meegenomen, wordt die ook netjes geladen.

Die **i18n**, hoe zit het daarmee? Je zou denken dat het met `config/locales/*.yml` files zo mooi werkt als met de `app` dir en `routes.rb`? Niet dus.

Gelukkig is het niet al te moeilijk op te lossen:

#### In environment.rb

{% highlight ruby %}
config.i18n.load_path += Dir[Rails.root.join('vendor', 'plugins', 'your_plugin', 'config', 'locales', '*.{rb,yml}')]
{% endhighlight %}

Wanneer je de [Rails cast](http://railscasts.com/episodes/149-rails-engines) liever leest: [ASCIIcasts - 149: Rails Engines](http://asciicasts.com/episodes/149-rails-engines).