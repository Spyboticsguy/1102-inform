"In Memoriam" by Loquacious Libriform Computing.
The story genre is "Surreal".
[By Tristen Allen, Logan Vaupel,  Joe Cantatore, and Brendan Miles.]
The story description is "Someone has died. How traic and unfortunate."
The story creation year is 2015.
[This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    See <http://www.gnu.org/licenses/> for license details.]

[Cover art used by Creative Commons Attribution-ShareAlike, version 4.0. 
	Image obtained from https://commons.wikimedia.org/wiki/File:Menyanthes_trifoliata_Spechtensee_01.JPG
	 by Wikimedia Commons username Uoaei1]

Release along with an interpreter and cover art ("Menyanthes trifoliata").

Use Undo Prevention.

[Why are you poking around in here?]

Chapter 0 - Unsheath

[Have you not accepted the outcome?]

Section 1 - REMEMBER

Table of Memory
Consequence	Value
"loops"	0
"completed"	0

Table of Informed Replies
Topic	Response
"your wife"	"I'm not responsible for how she dies, if that's what you're wondering."
"himself"	"This is me. I'm talking to you. I can't say much."
"help"	"I can't."

Table of Curious Topics
Topic	Response
"note"	"'A friend gave me this and told me it was for you. He also told me not to give it to you, oddly enough. He did ask me to give you some DIRECTIONS he wrote down. (Ask him about DIRECTIONS).'"
"directions"	"'He said to, uh, go back to work? Something about a Camaro. I didn't quite catch it all. He said that he'd given you your phone, so maybe something will change? I don't get it, sir. Seems like nonsense to me.'"

[Are you not satisfied?]

The File of Memory is called "dreft".

When play begins:
	if File of Memory exists:
		read File of Memory into the Table of Memory;
	else:
		write File of Memory from the Table of Memory;

Check quitting the game:
	write File of Memory from the Table of Memory;

When play ends:
	write File of Memory from the Table of Memory;

Check restarting the game:
	write File of Memory from the Table of Memory;

Section 2 - Basic Rules

[I suppose that's not really relevant.]

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

Before wearing something:
	if the player is in the bed, say "You should get out of bed before getting dressed." instead.

Section 3 - Values

[Well, in a manner of speaking, it is.]

A road is a kind of room.

Instead of exiting in a road:
	say "What do you think you're doing?! Are you MAD?"

Clothing is a kind of thing. Clothing is usually wearable.

Section 4 - New Actions

[Just really doesn't matter what we say.]

Resting is an action applying to nothing.
Understand "rest" as resting.

Check resting:
	if the car is in a road and the player is in the car:
		say "What do you think you're doing!?" instead;
	if the player is not in the car:
		say "You really should not be sleeping here." instead;
	if the car is not in outside or the car is not in the garage:
		say "You don't have the time to be doszing off. You're late!"

Carry out resting:
	say "Your mind begins to drift back to memories of you and your wife.";
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
			now the car is in The Driveway;
			now the player is in The Driveway;
		if the value corresponding to a consequence of "loops" in the Table of Memory is 2:
			now the car is in The Exit;
			try looking.

Using is an action applying to one visible thing.
Understand "use [something]" as using.

Check using:
	if the noun is not the phone and the noun is not the radio:
		say "You cannot use that." instead.

Carry out using:
	If the noun is phone:
		say "You attempt to call your wife.";
		If the value corresponding to a consequence of "loops" in the Table of Memory is not 2 or the player is not in the office:
			say "There is no reply.";
		Otherwise:
			say "She picks up. You begin apologizing profusely for this morning, but an unfamiliar voice on the other end cuts you off.[paragraph break]'Sir? You're listed as one of her ICE contacts. I'm afraid she's been in a terrible accident and is in critical condition.'[paragraph break]Your breathing gets shallow. Blotches begin to appear in your eyes. You dash out the door, get into your car, and drive to the hospital. Your memory of the event is a blur - you can't even remember if you told your boss where you were going.";
			now the player is in the hospital;
	otherwise:
		say "Some smooth jazz starts to play."

Chapter 1 - Sharpen

[You're here because you want something more out of the story.]

The Beginning is a region.

Section 1 - Jones' Memorial

[That's fine! In fact, that's wonderful.]

Jones' Memorial Baptist is a room in The Beginning. "There is a crowd gathered here, mourning the loss of a loved one."

Outside is Outdoors.

A casket is here. "There is a casket at the front of the room."
The description of the casket is "Orante, brown, and very expensive."

A suit is clothing.
The description of the suit is "Your suit is black and sleek, with an off-white kerchief in the pocket of the jacket."
The player wears the suit.

The plaque is a thing that is fixed in place.
The description of the plaque is "Reads: 'God, grant me the serenity to accept the things I cannot change,[line break]The courage to change the things I can,[line break]And the wisdom to know the difference.'"

A phone is a thing.
The description of the phone is "No unread messages. Has your wife's phone number on it."

A mysterious figure is a person who is nowhere.
The description of the mysterious figure is "You can't quite look at him, but he's staring at you."

An usher is a person who is nowhere.
The description of the usher is "He seems slightly nervous, almost like he isn't supposed to be here. He's clutching a small piece of paper with your face hastily sketched upon it, as well as some undecipherable text below it.[line break]He shoves the [bold type]note[roman type] hastily behind his back when he notices you looking."

After asking the usher about a topic listed in the Table of Curious Topics, say "[response entry]".

When play begins:
	If Jones' Memorial Baptist was not visited and the value corresponding to a consequence of "completed" in the Table of Memory is 0:
		If the value corresponding to a consequence of "loops" in the Table of Memory >= 1:
			Now the player wears the watch;
			Now the description of the watch is "Reads [time of day].";
		If the value corresponding to a consequence of "loops" in the Table of Memory is 1:
			Now the mysterious figure is in Jones' Memorial Baptist;
		If the value corresponding to a consequence of "loops" in the Table of Memory is 2:
			Now the player has the phone;
			Now the usher is in Jones' Memorial Baptist;
			Now the description of Jones' Memorial Baptist is "There is a crowd gathered here, mourning the loss of [bold type]your wife.[roman type]";
		If the value corresponding to a consequence of "loops" in the Table of Memory is 3:
			Now the usher is in Jones' Memorial Baptist;
			Now the description of Jones' Memorial Baptist is "There is a crowd gathered here, mourning the loss of [bold type]your wife.[roman type]";
	Otherwise if Jones' Memorial Baptist was not visited:
		Now the player wears the watch;
		Now the description of the watch is "Reads [time of day].";
		Now the player has the phone;
		Now the description of Jones' Memorial Baptist is "There is a crowd gathered here, mourning the loss of [bold type]your wife.[roman type]";
		Now the plaque is in Jones' Memorial Baptist.

Inside the casket is the deceased woman. The casket and the deceased woman are fixed in place.
The description of the deceased is "Beautiful, you're sure. But you can't quite bring yourself to look at her."

Instead of taking the casket, say "Later."
Instead of taking the deceased woman, say "It's far too late to hold her."

After looking in Jones' Memorial Baptist:
	say "Outside is the parking lot, with your car and some well-deserved tranquility.";
	if the player is wearing the watch and the value corresponding to a consequence of "loops" in the Table of Memory is 1:
		say "You feel an unfamiliar pressure around your wrist.";
	if the player has the phone and the value corresponding to a consequence of "loops" in the Table of Memory is 2:
		say "You feel a familiar vibration in your pocket.";

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

Instead of exiting while the player is in Jones' Memorial Baptist and the value corresponding to a consequence of "completed" in the Table of Memory is 1:
	end the story saying "Are you not satisfied? I can't do anything else for you. Unless YOU have some other way to change the outcome... if YOU can go above the story... this is all that's left for you here."

Section 2 - Outside

[I mean, this isn't really our story anymore.]

Outdoors is a room in The Beginning. "It's a lovely day outside. Balmy. Partly cloudy. You can hear the birds singing in the distance, as well as the chatter of those standing near the door."

Your car is a vehicle. It is here. "Your Camaro is nearby."
The description of your car is "Looks like a good place to get a quick break from today's events. You might try taking a quick REST here."
Instead of taking your car:
	say "That seems like it should be the other way around."
Understand "Camaro" as your car.

The radio is a thing that is in your car.
The radio is fixed in place.

The description of the radio is "Looks like it would play some music if you [bold type]use[roman type] it."

Instead of going by a vehicle:
	If the player is in your car and the car is in Outdoors:
		say "Before you get going, maybe you should take a quick rest.";
	otherwise if the player is in the car and the car is in the Garage:
		say "Before you get going, maybe you should take a quick rest.";
	otherwise if the player is in your bed:
		say "Unless you plan on pushing your bed around, you'll ned to GET OUT of bed first.";
	otherwise if the player is in your car and the car is in the back entrance:
		say "You can't drive your car into the office!";
	otherwise:
		continue the action.

After entering the car:
	try examining the car;
	say "(You are now in the car)."

Chapter 2 - The First Time

[We wrote it, sure, but then we gave it away. Let other people play it.]

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

Your wife is a person.
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
		
After taking the glass, say "Does not come with sack lunch."


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

[And if your story brings you here, well, that's your business.]

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

[Making changes here or even just observing the structure of the story...]

The Garage is a room. "Your wife's car is gone, leaving only your sleek blue Camaro."
The garage is in the morning.

Chapter 3 - Work

[...doesn't make your story any less valid.]

Work is a region.

Section 1 - Driveway

[You could play through the story again by changing the name of the data file, for example.]

The Driveway is a room in Work. "Your driveway is immediately outside your garage. You don't really have time to go back inside.[paragraph break]To the north is the highway that you use to get to work everyday."

Instead of going north while the player is in the driveway:
	say "You should get in your car before going down the highway, friend."

Section 2 - Highway

[Or, if you wanted to save his wife, you could change the ending.]

The Highway is a road in Work. "Full of cars. Calming, for once. North of here is your workplace; south is your driveway."
The highway is north of the driveway.

Section 3 - Work

[People do that kind of thing anyways, right? Maybe not in such a tangible way, but they do.]

The Workplace is a room in Work. "Here, you serve as a consultant for many top businesses in the area. You make enough to allow your wife to stay at home, but she has always mentioned wanting to go back to college for another degree."
The workplace is north of the highway.

After going to the workplace:
	if the workplace was not visited:
		now the mysterious figure is in the workplace;
		try looking;
		say "You pull into your company parking spot almost a full hour late, thanks to the traffic on the highway.[paragraph break]Your boss runs up to you as you pull into your parking space, a look of blank shock on his face.[line break]You stare at him, confused, and open the door to step out and apologize for your late arrival.[paragraph break]'Son, why in God's name are you here? Check your phone!'[paragraph break]You pre-emptively apologize, remembering that you left your phone in your cubicle, and inform your boss as such.[paragraph break]'Then I'm sorry to have to be the one to tell you this.'[line break]He pauses, uneasy at the message he is now being forced to deliver.[paragraph break]'Your wife's dead, son.'";
		say "Your boss walks inside after giving you the weekend off. He glances sadly at you before walking back inside.[line break]You begin to breathe rapidly. Thoughts flash through your mind. Why did you have to argue with your wife? Why does this seem so familiar? Why is that figure here?".

After asking the mysterious figure about a topic listed in the Table of Informed Replies, say "[response entry]".

After asking the mysterious figure about something for the first time:
	if the player is in the workplace or the player is in the car:
		if the car is in the workplace, say "You could ask him about YOUR WIFE, HIMSELF, HELP, or THE STORY."

After examining the figure while the player is in the workplace:
	say "You could ask him about YOUR WIFE, HIMSELF, HELP, or THE STORY."

 After examining the figure while the car is in the workplace:
	say "You could ask him about YOUR WIFE, HIMSELF, HELP, or THE STORY."

After asking the mysterious figure about "the story":
	say "Very astute. Yes, you're in one. And it's not about you, no. But it is about YOU.";
	say "See you later. Or earlier. Take your pick; doesn't matter to me.";
	say "Here's your phone. Hold on to it. You might want it.";
	say "(You are now carrying the phone.)";
	now the player has the phone;
	Now the value corresponding to a consequence of "loops" in the Table of Memory is 2;
	now the mysterious figure is nowhere;
	end the story saying "I'm sorry you had to find out this way. But, as you might suspect, I really have no control over it. You could try and go back, I suppose, but you might not find anything else worthwhile."

Instead of going south while the car is in the workplace and the player is in the car:
	say "Now is not the time to run. The figure has something to say to you."

Instead of going south while the player is in the workplace:
	say "Now is not the time to run. The figure has something to say to you."

[Go ahead - change this story. You probably already have.]

Chapter 4 - Culmination

The End is a region.

Section 1 - Back on the Highway

The Exit is a road in the End. "This exit will take you to work the back way around. Usually, you don't take this shortcut, but since you're late, you decided to text your friend and let him know to leave the back door unlocked.[paragraph break]You're lucky you didn't leave your [bold type]phone[roman type] at work.[paragraph break]Your work is north of here."

Section 2 - Work Again

The Back Entrance is a room in the End. "You're not as late as you thought you would be, but you should still really get inside."

The back entrance is north of the exit.

Instead of going south while the player is in the back entrance or the car is in the back entrance:
	say "You really must get inside."

Section 3 - Inside the Office

The Office is a room in the end. "Your office is unusually roomy. On your desk sits a small picture of your family, as well as a small area free of dust, in the shape of your phone.[line break]You have a few minutes to kill before your first meeting of the day. Maybe you should apologize to your wife? If something happened to her, you don't want your last words to eachother to be hateful!"

The picture is a thing inside the office.
The description of the picture is "A lovely family photo of your wife and children. Taken last month, in fact. On the back is scribbled: 'To my favorite dad!'"

The office is inside of the back entrance.

After going to the office:
	the phone vibrates in three turns from now;
	try looking.

At the time when the phone vibrates:
	say "Your phone vibrates with a reminder about your meeting. Now is the time to [bold type]use your phone.[roman type]".

The office is inside of the back entrance.

Instead of going while the player is in the office, say "You really don't have the time."

Section 4 - Hospital and Finale

The Hospital is a room in the End. "Sterile. You're waiting outside for the doctor to finish up so you can see your wife again. He said to [bold type]wait[roman type] here for just a couple more minutes."

After waiting while the player is in the hospital:
	say "The doctor exits the room, not quite meeting your eyes. He motions for you to go inside, then goes off to parts unknown.[paragraph break]You enter.";
	now the value corresponding to a consequence of "loops" in the Table of Memory is 3;
	now the value corresponding to a consequence of "completed" in the Table of Memory is 1;
	end the story saying "You apologized to your wife. She died in ICU hours later. You reconciled with her, but there was nothing the doctors could do. She had sustained traumatic injuries around her stomach, and any kind of intensive surgery risked rupturing the intestines and spreading contagion throughout the body. She died peacefully, though, in medicine-induced sleep.[paragraph break]Don't come back."