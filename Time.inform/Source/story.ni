"Interperter" by a bunch of people

Chapter 0 - Unsheath

Section 1 - REMEMBER

Table of Memory
Consequence	Value
"loops"	0
"completed"	0
"flowers"	0

The File of Memory is called "development".

When play begins:
	if File of Memory exists:
		read File of Memory into the Table of Memory;
	else:
		write File of Memory from the Table of Memory;

Check quitting the game:
	write File of Memory from the Table of Memory;

Section 2 - Basic Rules

Understand the command "load" as "restore".

Understand "talk to [someone]" as a mistake ("Perhaps you meant to ASK someone about something?").


Understand "xyzzy" as a mistake ("Incredible! If you were magic, maybe that would have done something.").

Section 3 - Values

Section 4 - New Actions

Resting is an action applying to nothing.
Understand "rest" as resting.

Check resting:
	if the player is not in your car:
		say "You really should not be sleeping here." instead.

Carry out resting:
	say "Your mind begins to drift back to memories of you and your wife.";
	[lots of stuff for choosing rooms. Right now debugging looping.]
	If the value corresponding to a consequence of "loops" in the Table of Memory >= 1:
		say "There seems to be a lack of content here.";
	otherwise:
		Now the value corresponding to a consequence of "flowers" in the Table of Memory is 1;
		Now the value corresponding to a consequence of "loops" in the Table of Memory is the value corresponding to a consequence of "loops" in the Table of Memory plus 1.

Chapter 1 - Sharpen

The Beginning is a region.

Section 1 - Jones' Memorial

Jones' Memorial Baptist is a room in The Beginning. "There is a crowd gathered here, mourning the loss of your wife."

Outside is Outdoors.

A casket is here. "There is a casket at the front of the room."
The description of the casket is "Orante, brown, and very expensive."

A boquet is nowhere.
The description of the boquet is "From your first date."

A mysterious figure is a person who is nowhere.
The description of the mysterious figure is "You can't quite look at him, but he's staring at you."

When play begins:
	If Jones' Memorial Baptist was not visited:
		If the value corresponding to a consequence of "loops" in the Table of Memory >= 1:
			Now the boquet is on top of the casket;
		If the value corresponding to a consequence of "loops" in the Table of Memory is 1:
			Now the mysterious figure is in Jones' Memorial Baptist;

Inside the casket is your wife. The casket and your wife are fixed in place.
The description of your wife is "Beautiful, you're sure. But you can't quite bring yourself to look at her."

Instead of taking the casket, say "Later."
Instead of taking your wife, say "It's far too late to hold her."

After looking in Jones' Memorial Baptist:
	say "Outside is the parking lot, with your car and some well-deserved tranquility.";
	if the boquet is in the casket:
		say "There is something different about the casket.".

Instead of asking the mysterious figure about anything:
	If the player is in Jones' Memorial Baptist:
		say "I don't know who this 'mysterious figure' is.";
		now the mysterious figure is nowhere;
	else:
		continue the action.

Instead of asking the mysterious figure for anything:
	If the player is in Jones' Memorial Baptist:
		say "I don't know who this 'mysterious figure' is.";
		now the mysterious figure is nowhere;
	else:
		continue the action.

Instead of telling the mysterious figure about anything:
	If the player is in Jones' Memorial Baptist:
		say "I don't know who this 'mysterious figure' is.";
		now the mysterious figure is nowhere;
	else:
		continue the action.

Section 2 - Outside

Outdoors is a room in The Beginning. "It's a lovely day outside. Balmy. Partly cloudy. You can hear the birds singing in the distance, as well as the chatter of those standing near the door."

Your car is a vehicle. It is here. "Your Camaro is nearby."
The description of your car is "Looks like a good place to get a quick break from today's events."
Instead of taking your car:
	say "That seems like it should be the other way around."
Understand "Camaro" as your car.

Instead of going by a vehicle, say "You have nowhere to go. You could walk back inside, or maybe REST a while."

Chapter 2 - The First Time

The Date is a region.