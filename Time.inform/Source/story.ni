"Interperter" by a bunch of people

Release along with an interpreter.

Chapter 0 - Unsheath

Section 1 - REMEMBER

Table of Memory
Consequence	Value
"loops"	0
"completed"	0

The File of Memory is called "dev2".

When play begins:
	if File of Memory exists:
		read File of Memory into the Table of Memory;
	else:
		write File of Memory from the Table of Memory;

Check quitting the game:
	write File of Memory from the Table of Memory;

When play ends:
	write File of Memory from the Table of Memory;
	

Section 2 - Basic Rules

Understand "get out of [anything]" as a mistake ("Just GET OUT without saying what you want to exit.").
Understand "exit [anything]" as a mistake ("Just EXIT without saying what you want to exit.").

Understand the command "load" as "restore".

Instead of sleeping, try resting.

Before taking something (called it):
	If we have not examined it:
		try examining it.

Understand "go downstairs" as a mistake ("Try going DOWN instead.").
Understand "go upstairs" as a mistake ("Try going UP instead.").
Understand "talk to [someone]" as a mistake ("Perhaps you meant to ASK someone about something?").

Understand "xyzzy" as a mistake ("Incredible! If you were magic, maybe that would have done something.").

Section 3 - Values

A wife is a kind of person.
A road is a kind of room.
Clothing is a kind of thing. Clothing is usually wearable.

Section 4 - New Actions

Resting is an action applying to nothing.
Understand "rest" as resting.

Check resting:
	if the car is in a road and the player is in the car:
		say "What do you think you're doing!?" instead;
	if the player is not in the car:
		say "You really should not be sleeping here." instead.

Carry out resting:
	say "Your mind begins to drift back to memories of you and your wife.";
	[lots of stuff for choosing rooms. The first time, however, is scripted.]
	If the value corresponding to a consequence of "loops" in the Table of Memory < 1 and the car is in the outdoors:
		say "You begin to drift off to sleep, but are rudely awakened by a question:[line break]";
		say "'What time is it?'";
		now the player is in your bed;
		now the suit is in the bureau;
		now the watch is in the bedroom;
	otherwise if the value corresponding to a consequence of "loops" in the Table of Memory < 1 and the car is in the garage:
		Now the value corresponding to a consequence of "loops" in the Table of Memory is the value corresponding to a consequence of "loops" in the Table of Memory plus 1;
		end the story saying "That was a chaotic morning. Was this really the only memory you had of your wife? Perhaps you should try again.";
	otherwise:
		if the value corresponding to a consequence of "loops" in the Table of Memory is 1:
			now the player is in The Driveway;
			now the car is in The Driveway;
		otherwise:
			now the value corresponding to a consequence of "loops" in the Table of Memory is the value corresponding to a consequence of "loops" in the Table of Memory plus 1.

Chapter 1 - Sharpen

The Beginning is a region.

Section 1 - Jones' Memorial

Jones' Memorial Baptist is a room in The Beginning. "There is a crowd gathered here, mourning the loss of your wife."

Outside is Outdoors.

A casket is here. "There is a casket at the front of the room."
The description of the casket is "Orante, brown, and very expensive."

A suit is clothing.
The description of the suit is "Your suit is black and sleek, with an off-white kerchief in the pocket of the jacket."
The player wears the suit.

[A boquet is nowhere.
The description of the boquet is "From your first date."]

A mysterious figure is a person who is nowhere.
The description of the mysterious figure is "You can't quite look at him, but he's staring at you."

When play begins:
	If Jones' Memorial Baptist was not visited:
		If the value corresponding to a consequence of "loops" in the Table of Memory >= 1:
			Now the player wears the watch;
			Now the description of the watch is "Reads [time of day].";
		If the value corresponding to a consequence of "loops" in the Table of Memory is 1:
			Now the mysterious figure is in Jones' Memorial Baptist;


Inside the casket is the deceased woman. The casket and the deceased woman are fixed in place.
The description of the deceased is "Beautiful, you're sure. But you can't quite bring yourself to look at her."

Instead of taking the casket, say "Later."
Instead of taking the deceased woman, say "It's far too late to hold her."

After looking in Jones' Memorial Baptist:
	say "Outside is the parking lot, with your car and some well-deserved tranquility.";
	if the player is wearing the watch:
		say "You feel an unfamiliar pressure around your wrist.".

Before examining the watch:
	If we have not examined the watch and the player is in the beginning and the value corresponding to a consequence of "loops" in the Table of Memory is 1:
		say "You know you didn't have this around your wrist when you walked in. What's going on?"

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
	If the player is in your car and the car is in Outdoors:
		say "Before you get going, maybe you should take a quick rest.";
	otherwise if the player is in the car and the car is in the Garage:
		say "Before you get going, maybe you should take a quick rest.";
	otherwise if the player is in your bed:
		say "Unless you plan on pushing your bed around, you'll ned to GET OUT of bed first.";
	otherwise:
		continue the action.

Chapter 2 - The First Time

The Morning is a region.

Section 1 - Bedroom

The time of day is 8:10 AM.
The Bedroom is a room in Morning. "Your bedroom, with a lovely king-size bed, silk covers, and plenty of space. [line break] Light streams in through small cracks in the blinds.[paragraph break] The kitchen is downstairs from here."

Your bed is a vehicle in the bedroom.
Your bed is fixed in place.
The description of your bed is "Fluffy. Inviting, safe, comfortable. Take your pick."
Your watch is clothing that is in the bedroom. "A small watch lies on your bedside table, along with an empty glass."
The description of your watch is "Reads [time of day]. You are late."
A glass is a container in the bedroom.
The description of the glass is "Was filled with water before you went to sleep. Now empty and dirty."

A bureau is a container in the bedroom. "Your ornate bureau looms rather ominously over your bed."
The description of the bureau is "You should really find a less disturbing-looking centerpiece for your room."

Your wife is a wife.
Your wife is in your bed. "Your wife lies next to you, groggy but awake."
The description of your wife is "Still beautiful. Right now you can still look at her."

Instead of asking your wife about anything:
	If the player is in the bed or the player is in the bedroom:
		say "Not the best idea at this moment.";
	else:
		continue the action.

Instead of asking your wife for anything:
	If the player is in the bed or the player is in the bedroom:
		say "Not the best idea at this moment.";
	else:
		continue the action.

Instead of telling your wife about anything:
	If the player is in the bed or the player is in the bedroom:
		say "Not the best idea at this moment.";
	else:
		continue the action.

Instead of taking the glass:
	say "It is empty, and needs a wash."


After examining your watch for the first time:
	If the player is in your bed or the player is in the bedroom:
		say "Your wife glances at the watch at the same time you do. She seems furious. [line break]";
		say "'The kids are going to be late for school! Again! Did you not set the alarm? Actually, scratch that - I don't care. Get ready and meet me downstairs.'[paragraph break]";
		say "She throws on her clothes and storms downstairs.";
		now your wife is in the kitchen;
		now the description of your wife is "Furious. Still lovely, in a very frightening, wrathful way.";
		now the initial appearance of your wife is "Your wife is here, but isn't looking you in the eyes."

Instead of going down:
	If the player is in the bedroom:
		If the player is not wearing a suit:
			say "You really shouldn't parade about in your birthday suit.";
		otherwise if the player is not wearing a watch:
			say "Do you want to be late again? You might need your watch.";
		otherwise:
			continue the action;
	otherwise:
		continue the action.

Section 2 - Kitchen

The Kitchen is a room below the bedroom. "The kitchen is spacious, but you really don't have the time to prepare a meal.[line break]Outside of the kitchen is the garage, which has both your car and that of your wife."
Up from Kitchen is the bedroom.
The Kitchen is in the Morning.
Outside of the kitchen is the garage.

There is a box of cereal in the kitchen. "There is a box of off-brand cereal here."
The description of the cereal is "This will have to do."
The box of cereal is edible.

Instead of asking your wife about anything:
	If the player is in the kitchen:
		say "She's not in the mood.";
	else:
		continue the action.

Instead of asking your wife for anything:
	If the player is in the kitchen:
		say "She's not in the mood.";
	else:
		continue the action.

Instead of telling your wife about anything:
	If the player is in the kitchen:
		say "She's not in the mood.";
	else:
		continue the action.

Before going while the player is in the kitchen:
	If your wife is in the kitchen:
		say "You notice your wife rushing to get the kids ready as you prepare to leave the kitchen.[line break]She yells:[paragraph break]'I can't believe you forgot to set the alarm even after I reminded you last night!'[paragraph break]You blow her off, reminding her that you're late to work. You suggest that, perhaps, if she had set her own alarm, this wouldn't be an issue.[paragraph break]She doesn't seem to like that, and coldly ignores you as she goes to the garage.";
		now your wife is nowhere;
		now your car is in the garage;
		now the description of your car is "You really are very tired - a quick nap in your car wouldn't hurt. Just be sure to set the alarm this time.";

Section 3 - Garage

The Garage is a room. "Your wife's car is gone, leaving only your sleek blue Camaro."
The garage is in the morning.

Chapter 3 - Work

Work is a region.

Section 1 - Driveway

The Driveway is a road in Work. "Your driveway is immediately outside your garage. You don't really have time to go back inside.[paragraph break]To the north is the highway that you use to get to work everyday."

Instead of going north while the player is in the driveway:
	say "You should get in your car before going down the highway, friend."

Section 2 - Highway

The Highway is a road in Work.
The highway is north of the driveway.