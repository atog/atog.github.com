---
layout: post
title: How to delete a calendar on the iPhone
---
Een calendar verwijderen op je iPhone. _Dat_ op een gemakkelijke, voor de hand liggende manier toelaten, dat is iets wat ze daar bij Apple vergeten zijn.

Door de clean install van Snow Leopard moest ik mijn iPhone opnieuw syncen met MobileMe. Ik heb ook nogal een rare setup omdat mijn calendars van Google Apps komen (Google apps -> BusySync -> iCal -> MobileMe -> iPhone -> en helemaal terug ook).

Om de een of andere reden had ik plots 2 groepen MobileMe calendars. Lastig. Ik heb het vervolgens proberen op te lossen door hier en daar wat te syncen, maar wat ik ook deed, er kwam telkens een calendar groep bij!? Toen ik 5 van die groepen had heb ik Google ter hulp geroepen, ik kon immers onmogelijk de enigste zijn met dat probleem.

Guess what? [Er bestaat een oplossing](http://discussions.apple.com/message.jspa?messageID=9668500#9668500)!

* On your iPhone, in Settings->Mail, Contacts, Calendars, find your Mobile Me account, turn off "Calendars". Exit the settings application (hit the button to go back to the home screen), or the next sync will fail.
* Temporarily create a calendar in iCal called "Apple FAIL" or something. In iTunes under your phone->Info, "Sync iCal calendars", select just that calendar (unchecking the option to sync iCal calendars won't clear out the stranded ones).
* Under "Advanced" on the same screen (you might have to scroll down to see it), check "Calendar" under "Replace information on this iPhone"
* Sync.
* On iTunes, uncheck "Sync iCal calendars".
* Sync.
* On your Mac, delete the temporary "Apple FAIL" calendar you created.
* On your iPhone, go back to Settings->Mail, Contacts, Calendars, find your Mobile Me account, turn "Calendars" back on.

Dat werkt dus. Simpel, toch?