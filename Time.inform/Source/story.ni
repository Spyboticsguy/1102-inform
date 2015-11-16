"Interperter" by a bunch of people

Chapter 0 - Unsheath

Section 1 - REMEMBER

Table of Memory
Consequence	Value
"loops"	0
"completed"	0

The File of Memory is called "development1".

When play begins:
	if File of Memory exists:
		read File of Memory into the Table of Memory;
	else:
		write File of Memory from the Table of Memory;

Check quitting the game:
	write File of Memory from the Table of Memory;

Section 2 - Basic Rules

Understand "get out of [anything]" as a mistake ("Just GET OUT without saying what you want to exit.").
Understand "exit [anything]" as a mistake ("Just EXIT without saying what you want to exit.").

Understand the command "load" as "restore".

Understand "go downstairs" as a mistake ("Try going DOWN instead.").
Understand "go upstairs" as a mistake ("Try going UP instead.").
Understand "talk to [someone]" as a mistake ("Perhaps you meant to ASK someone about something?").

Understand "xyzzy" as a mistake ("Incredible! If you were magic, maybe that would have done something.").

Section 3 - Values

A wife is a kind of person.

Section 4 - New Actions

Resting is an action applying to nothing.
Understand "rest" as resting.

Check resting:
	if the player is not in your car:
		say "You really should not be sleeping here." instead.

Carry out resting:
	say "Your mind begins to drift back to memories of you and your wife.";
	[lots of stuff for choosing rooms. The first time, however, is scripted.]
	If the value corresponding to a consequence of "loops" in the Table of Memory < 1:
		say "You begin to drift off to sleep, but are rudely awakened by a question:[line break]";
		say "'What time is it?'";
		now the player is in your bed;
	otherwise:
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


Inside the casket is the deceased woman. The casket and the deceased woman are fixed in place.
The description of the deceased is "Beautiful, you're sure. But you can't quite bring yourself to look at her."

Instead of taking the casket, say "Later."
Instead of taking the deceased woman, say "It's far too late to hold her."

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

Instead of going by a vehicle:
	If the player is in your car:
		say "You have nowhere to go. You could get out of your car, or maybe REST a while.";
	otherwise if the player is in your bed:
		say "Unless you plan on pushing your bed around, you'll ned to GET OUT of bed first."

Chapter 2 - The First Time

The Morning is a region.

Section 1 - Bedroom

The Bedroom is a room in Morning. "Your bedroom, with a lovely king-size bed, silk covers, and plenty of space. [line break] Light streams in through small cracks in the blinds.[paragraph break] The kitchen is downstairs from here."

Your bed is a vehicle in the bedroom.
Your bed is fixed in place.
The description of your bed is "Fluffy. Inviting, safe, comfortable. Take your pick."
Your watch is in the bedroom. "A small watch lies on your bedside table, along with an empty glass."
Your watch is fixed in place.
The description of your watch is "Reads 8:12. You are late."
A glass is a container in the bedroom.
The description of the glass is "Was filled with water before you went to sleep. Now empty and dirty."

Your wife is a wife.
Your wife is in your bed. "Your wife lies next to you, groggy but awake."
The description of your wife is "Still beautiful. Right now you can still look at her."

Instead of asking your wife about anything:
	If the player is in the bed:
		say "Not the best idea at this moment.";
	else:
		continue the action.

Instead of asking your wife for anything:
	If the player is in the bed:
		say "Not the best idea at this moment.";
	else:
		continue the action.

Instead of telling your wife about anything:
	If the player is in the bed:
		say "Not the best idea at this moment.";
	else:
		continue the action.

Instead of taking the glass:
	say "It is empty, and needs a wash."


After examining your watch:
	If the player is in your bed:
		say "Your wife glances at the watch at the same time you do. She seems furious. [line break]";
		say "'The kids are going to be late for school! Again! Did you not set the alarm? Actually, scratch that - I don't care. Get ready and meet me downstairs.'";
		now your wife is in the kitchen.

Section 2 - Kitchen

The Kitchen is a room below the bedroom. 
Up from Kitchen is the bedroom.
The Kitchen is in the Morning.