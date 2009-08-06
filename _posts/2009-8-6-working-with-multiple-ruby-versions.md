---
layout: post
title: Working with multiple ruby versions
---
Ik heb al een tijdje zin om eens te experimenteren met ruby 1.9. Het zou beter zijn om het gewoonweg dagdagelijks te gebruiken, maar zover zijn we nu eenmaal nog niet. Wat me ook altijd een beetje tegengehouden heeft, is dat ik  van mijn Maccie, waar ik toch contstant op moet werken, geen onstabiel windows-like machien wil maken. ;)

Via [Dr Nic](http://drnicwilliams.com/) kwam ik uit op [Working With Multiple Ruby Versions Has Never Been This Easy](http://blog.thinkrelevance.com/2009/7/29/ruby-switcher-working-with-multiple-ruby-versions-has-never-been-this-easy/)

Aan de hand van dat [RubySwitcher](http://github.com/relevance/etc/blob/26ae85c2f6c7d2640a3c75d619ad7ab8fc1cc570/bash/ruby_switcher.sh) script is belachelijk gemakkelijk om verschillende ruby versies naast elkaar te draaien. Er is geen enkel excuus meer om het niet te doen.

Out of the box kan je volgende ruby versies installeren en gebruiken:

* `install_ruby_191` (install) `use_ruby_191` (use)
* `install_ruby_186` (install) `use_ruby_186` (use)
* `install_ruby_187` (install) `use_ruby_187` (use)
* `install_jruby` (install) `use_jruby` (use)
* `install_jruby_120` (install) `use_jruby_120` (use)
* `install_ree_186` (install) use `use_ree_186` (use)

Om de standaard ruby versie te gebruiken `use_leopard_ruby`.