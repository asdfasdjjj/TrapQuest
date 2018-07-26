Staff Framework by Monster Framework begins here.

A staff member is a kind of monster. A staff member is intelligent. A staff member is usually female.

Definition: a staff member (called M) is school dwelling:
	decide yes.

The description of a staff member is "[FullMonsterDesc of item described]".

To say FullMonsterDesc of (M - a staff member):
	if images visible is 1, display monster-image of M;
	say MonsterDesc of M;
	say StaffDesc of M.

To say MonsterDesc of (M - a staff member):
	say "This staff member seems to be missing [his of M] description!".

To say StaffDesc of (M - a staff member):
	say "[Big he of M] is wearing a black armband which says 'STAFF' in large [rank-colour of M] letters.".

To say rank-colour of (M - a staff member):
	if M is sapphire-teacher:
		say "sapphire";
	otherwise if M is emerald-teacher:
		say "emerald";
	otherwise if M is ruby-teacher:
		say "ruby";
	otherwise if M is pink-diamond-teacher:
		say "pink diamond";
	otherwise if M is diamond-teacher:
		say "pure diamond";
	otherwise:
		say "solid gold".

To decide which number is the starting difficulty of (M - a staff member):
	decide on 9.

To set up (M - a staff member):
	reset M;
	now the monstersetup of M is 1;
	while M is in School01 or M is off-stage:
		now M is in a random placed academic room;
	now the difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	uniquely set up M.

To uniquely set up (M - a staff member):
	do nothing.

To regionally place (M - a staff member):
	while M is not in the school or M is in the location of the player or M is nearby:
		now M is in a random schoolplaced room.

Definition: a staff member (called M) is human:
	decide yes.

Definition: a staff member (called M) is uniquely unfriendly:
	decide no.

To compute perception of (M - a staff member):
	now M is interested;
	calm M;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed]. [otherwise]!  [end if]";
	if detention chair is grabbing the player:
		compute detention chair tease of M;
	otherwise if armband is worn:
		compute student perception of M;
	otherwise:
		compute nonstudent perception of M.

To compute student perception of (M - a staff member):
	do nothing.

To compute nonstudent perception of (M - a staff member):
	say "[speech style of M]'You!  Where is your armband?!'[roman type][line break][Big he of M] takes an aggressive stance.";
	anger M.

To compute (M - a staff member) reacting to armband replacement:
	if M is in the location of the player, say "[ArmbandCalming of M]";
	calm M.

To say ArmbandCalming of (M - a staff member):
	if M is unfriendly, say "[BigNameDesc of M] calms down.".

Part - Protection

To compute (M - a staff member) protecting against (X - a monster):
	say "[speech style of M]'[if X is staff member]Another rebellion?!'[otherwise]NO FIGHTING!'[end if][roman type][line break][BigNameDesc of M] turns aggressive.";
	anger M.

To compute (M - a staff member) protecting against (X - nurse):
	do nothing. [The nurse assaults the player on the bed, and this shouldn't upset the staff!]

Part - Combat

This is the staff member unique punishment rule:
	if there is a worn armband: [No staff members have yet been killed]
		compute detention of current-monster;
		repeat with M running through unfriendly staff members:
			calm M;
	otherwise:
		compute current-monster dungeon locking;
	rule succeeds.

The unique punishment rule of a staff member is usually the staff member unique punishment rule.


Part - Defeat

To compute unique death of (M - a staff member):
	say "[BigNameDesc of M] slumps to the ground. Before [he of M] disappears, [he of M] mutters some words under [his of M] breath. Suddenly your [armband] fizzles into thin air!";
	now armband is in Holding Pen.


Part - Conversation

To say FirstResponse of (M - a staff member):
	let E be the extra lives of the player;
	say "[speech style of M]'Good [if E is 1]morning[otherwise if E is 2]evening[otherwise if E is 3]afternoon[end if].'[roman type][line break]".

To say RepeatResponse of (M - a staff member):
	let E be the extra lives of the player;
	say "[speech style of M]'Good [if E is 1]morning[otherwise if E is 2]evening[otherwise if E is 3]afternoon[end if], Miss [NameBimbo]'[roman type][line break]".
	
To say WhoQuestion of (M - a staff member):
	say "[variable custom style]'What do you teach?'[roman type][line break]".

To say WhereQuestion of (M - a staff member):
	say "[variable custom style]'[if the rank of the player <= 1]Where [one of]are we?'[or]am I?'[at random][otherwise]What's the best way to increase my rank?'[end if][roman type][line break]".

To say EscapeQuestion of (M - a staff member):
	say "[variable custom style]'What stuff is there to find deeper in the school?'[roman type][line break]".

To say StoryQuestion of (M - a staff member):
	say "[variable custom style]'What's up with this place?'[roman type][line break]".

To say AdviceQuestion of (M - a staff member):
	say "[variable custom style]'Any advice for an eager student?'[roman type][line break]".

To say WhoAnswer of (M - a staff member):
	say "[speech style of M]'I should clearly be teaching you not to ask stupid questions!'[roman type][line break]".

To say WhereAnswer of (M - a staff member):
	say "[speech style of M]'[if the rank of the player <= 1]Geez, you're pretty far gone, aren't you?'[otherwise]Ranks are earned, and not without effort. It's important you realise that.'[end if][roman type][line break]".

To say EscapeAnswer of (M - a staff member):
	say "[speech style of M]'Wouldn't you like to know.'[roman type][line break]".

To say StoryAnswer of (M - a staff member):
	say "[speech style of M]'This institution has been around longer than any of its members, that's for sure. Its origins are still surrounded in mystery.'[roman type][line break]".

To say AdviceAnswer of (M - a staff member):
	say "[speech style of M]'Don't take off your armband.'[roman type][line break]".

To compute teaching of (M - a staff member):
	say "[speech style of M]'[one of]Is that supposed to be some kind of joke?'[or]Haha, very funny.'[or]Are you trying to insult me or something?'[in random order][roman type][line break]".

To decide which number is the annoyance threshold of (M - a staff member):
	decide on 999999.
	

Part - Teachers

A teacher is a kind of staff member. A teacher has an indexed text called teacher-name. Understand the teacher-name property as describing a teacher.

An emerald-teacher is a kind of teacher. A ruby-teacher is a kind of teacher. A pink-diamond-teacher is a kind of teacher. A diamond-teacher is a kind of teacher.

The printed name of teacher is "[if item described is in the location of the player][TQlink of item described][end if][input-style]teacher[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".

To say NameDesc of (M - a teacher):
	say "[input-style][teacher-name of M][roman type]".
To say BigNameDesc of (M - a teacher):
	say "[input-style][teacher-name of M][roman type]".

Part - Lessons

A lesson is a kind of object. A lesson has a teacher called lesson-teacher.

class-time is a number that varies. class-time is 1000.

chosen-lesson is an object that varies.

lesson-room is a room that varies.

This is the class-time cooldown rule:
	if class-time < 1000: [We use 1000 to represent that the player hasn't been to a class before]
		decrease class-time by counters-seconds;
		if class-time <= 0 and class-time + counters-seconds > 0 and armband is worn:
			say "[bold type]Your [ShortDesc of armband] begins to beep like an alarm clock! ";
			if (the player is in the Dungeon or the player is in the Woods or the player is in the Hotel or the player is in the Mansion) and the number of warp portals in the location of the player is 0:
				now school portal is in the location of the player;
				say "A shimmering green [school portal] appears [if north is N-viable]to the north, blocking that exit[otherwise if the player is in the woods]in front of the trees to the north[otherwise]on the north wall[end if].";
			say "	[line break][variable custom style][one of]Huh?!  Does this mean it's time for the next class or something?[or]Time for class again...[stopping][roman type][line break]".
The class-time cooldown rule is listed in the advance counters rules.

Definition: a lesson (called L) is correctly-ranked:
	if lesson-room is School14 and the lesson-teacher of L is sapphire-teacher, decide yes;
	if lesson-room is School18 and the lesson-teacher of L is emerald-teacher, decide yes;
	if lesson-room is School29 and the lesson-teacher of L is ruby-teacher, decide yes;
	if lesson-room is School30 and the lesson-teacher of L is pink-diamond-teacher, decide yes;
	decide no.

Definition: a lesson (called L) is appropriate:
	if the lesson-teacher of L is alive, decide yes;
	decide no.

Report going north:
	now lesson-room is the location of the player;
	compute potential lesson.

To compute potential lesson:
	if lesson-room is a lecture academic room and armband is worn and the armband-print of armband is not "new recruit":
		if class-time is 1000 or class-time <= 0:
			now chosen-lesson is a random correctly-ranked appropriate lesson;
			if chosen-lesson is not lesson: 
				say "ERROR: No lesson currently coded for this class for the player's current state. If this is an early alpha of the school, it's likely that this content just doesn't exist yet!  Come back soon.";
			otherwise if class-time < -300:
				compute detention of lesson-teacher of chosen-lesson;
			otherwise:
				set up chosen-lesson;
				if image cutscenes is 1, display monster-image of lesson-teacher of chosen-lesson;
				compute teaching of chosen-lesson;
			now class-time is 300.

To set up (L - a lesson):
	repeat with M running through monsters in lesson-room:
		regionally place M;
		bore M; 
	now the lesson-teacher of L is in lesson-room;
	bore the lesson-teacher of L;
	repeat with M running through alive lesson-appropriate students:
		now M is in lesson-room;
		bore M. [It's important that everyone is bored because otherwise after the lesson they'll all immediately notice the player]

Part - Detention

detention-turns is a number that varies.

This is the detention decay rule:
	if detention-turns > 0, decrease detention-turns by 1.
The detention decay rule is listed in the advance counters rules.

To compute detention of (M - a staff member):
	now M is in the location of the player;
	let R be a random number between 1 and 2;
	if health of M < the maxhealth of M, say GenericDetention of M;
	otherwise say LateDetention of M;
	if R is 1 and diaper quest is 0, compute remedial detention of M;
	otherwise compute chair detention of M.

To say LateDetention of (M - a staff member):
	say "[BigNameDesc of M] stares at you. It looks like [he of M] has been waiting for you.[line break][speech style of M]'YOU'RE LATE!  Class is already over!  It's detention for you, young Miss. Come with me now!'[roman type][line break]".

To say GenericDetention of (M - a staff member):
	say "[BigNameDesc of M] looks furious. [line break][speech style of M]'It[']s DETENTION for you, young Miss. Come with me now!'[roman type][line break]".

dq-staff-detention is a diaper punishment.  the priority of dq-staff-detention is 5.

To compute punishment of (P - a dq-staff-detention):
	follow the unique punishment rule of current-monster.

Definition: a dq-staff-detention (called P) is appropriate:
	if current-monster is staff member, decide yes;
	decide no.

Section - Chair Detention

To compute TQChairSetup of (M - a staff member):
	let K be a random worn trousers;
	if K is trousers:
		say "[big he of M] rips your [K] off of you.";
		destroy K;
	now K is a random worn knickers;
	if K is knickers:
		say "[big he of M] rips your [K] off of you.";
		destroy K.

To compute DQChairSetup of (M - a staff member):
	let D be a random off-stage disposable diaper;
	if D is nothing, now D is a random disposable diaper;
	summon D;
	say "[big he of M] forces a [ShortDesc of D] around your loins.".

To compute chair detention of (M - a staff member):
	now detention chair is detention-wand;
	now detention-turns is a random number between 15 and 25;
	drag to School13 by M;
	say "[speech style of M]'[if the health of M < the maxhealth of M]We will not allow aggressive behaviour in this school, as you are about to learn the hard way[otherwise]If you can't get to class on time then you'll have to catch up the hard way[end if]. [if diaper quest is 1 and the number of worn diapers is 0]Put on this diaper and sit.[otherwise]Sit[end if].'[roman type][line break][big he of M] points to the chair with a vibrating wand fixed in the centre. ";
	if diaper quest is 0 or the number of worn diapers is 0, compute TQChairSetup of M;[in TQ underwear is always removed]
	if (diaper quest is 1 or a random number between 0 and 3 < diaper lover) and the number of worn diapers is 0, compute DQChairSetup of M;
	say "[if the delicateness of the player > 10]You crawl over to the [detention chair] and pull yourself into it[otherwise if the delicateness of the player > 4][BigNameDesc of M] drags you over to the [detention chair] and waits as you obediently pull yourself into it[otherwise][BigNameDesc of M] drags you over to the [detention chair] and forces you into it[end if], [if the delicateness of the player > 10]submissively allowing [him of M] to bind[otherwise], quickly binding[end if] you in place with the straps. ";
	if the player is able to speak:
		say "[if the player is able to speak][line break][speech style of M]'[one of]These are the rules: You must announce out loud whenever you orgasm, and whenever someone speaks to you, you must say [']Thank you for putting me in my place, Sir or Ma[']am.'[or]I[']d tell you the rules, but unfortunately we have been through this before.'[stopping][roman type][line break][end if]She points to a camera in the upper corner of the room, facing the chair. [line break][speech style of M]I will be watching. I will release you when I believe you have learned your lesson.'[roman type][line break]";
	otherwise:
		say "[speech style of M]I will release you when I believe you have learned your lesson.'[roman type][line break]";
	compute room leaving of M;
	now M is in Holding Pen;
	repeat with N running through alive students:
		now the boredom of N is 0;
		now N is uninterested;
	repeat with N running through alive staff members:
		now the boredom of N is 0;
		now N is uninterested;
	now the stance of the player is 1;
	now detention chair is grabbing the player;
	now detention chair is detention-wand.

To DetentionChairWait:
	while detention chair is grabbing the player:
		now seconds is 6;
		compute extra turn.

A time based rule (this is the detention chair rule):
	if detention chair is grabbing the player:
		if detention chair is detention-wand:
			compute wand chair detention;
		otherwise:
			compute rem chair detention.

To compute wand chair detention:
	repeat with M running through uninterested alive students:
		if the boredom of M is 0, check seeking 1 of M; [NPCs make their way to watch the spectacle]
	if detention-turns > 0:
		say "The magic wand [one of]buzzes powerfully[or]continues to buzz[stopping]!";[possibly add text here describing arousal so far]
		arouse 500;
		increase the fatigue of the player by 30;
		if vagina is pushed over the edge, vaginally orgasm shamefully;
	otherwise:
		let M be a random staff member in Holding Pen;
		if M is staff member:
			now M is in the location of the player;
			say "[BigNameDesc of M] returns and after looking at your exhausted state gives you a wide smirk. [big he of M] doesn't say anything but just releases you from the bindings before sauntering off.";
			distract M;
		otherwise:
			say "BUG: There's no teacher to summon to release the player. The player will be released anyway so that the game doesn't freeze!";
		dislodge detention chair.

To compute detention chair tease of (M - a monster):
	say "[detention chair tease of M][detention chair tease response of M]";
	now the boredom of M is 300;
	now M is uninterested.

To say detention chair tease of (M - a monster):
	say "[speech style of M]'[one of]Hah! You enjoying yourself there, [honey of M]?'[or]Geez, it's like you get off on humiliation or something.'[or]You must be pretty dumb if you can't even get to class on time.'[in random order][roman type][line break]".

To say detention chair tease of (M - a teacher):
	say "[speech style of M]'[one of]Hmmph. I wouldn't be surprised if I saw you in here again.'[or]Pathetic.'[or]Hah. You're not even worthy of being teased.'[in random order][roman type][line break]".

To say detention chair tease response of (M - a monster):
	if the player is able to speak:[Possibly mention a camera being in the room so low delicateness players have an incentive to obey]
		if the delicateness of the player > 12 or the fatigue of the player > 200:
			if the delicateness of the player <= 12, say "You're just too tired to fight it, and say the words without hesitation.[line break]";[if we say this, it's because the player is really fatigued]
			say "[variable custom style]'Thank you for putting me in my place, [if M is female]Ma'am[otherwise]Sir[end if].'[roman type][line break]";
			say "You [one of]shiver[or]shudder[or]cringe[in random order] with shame.";
			humiliate 60;[it's extra humiliating because you had to thank them]
		otherwise:
			say "[one of]You feel the camera on the edge of your vision, watching you[or]You know the camera is pointing right at you[at random]. Thank [NameDesc of M]?[line break]";
			if the player consents:
				say "[variable custom style]'Thank you for putting me in my place, [if M is female]Ma'am[otherwise]Sir[end if].'[roman type][line break]";
				say "You [one of]shiver[or]shudder[or]cringe[in random order] with shame, unable to look [him of M] in the eye as you [if the delicateness of the player < 3]growl[otherwise if the delicateness of the player < 6]mutter[otherwise]recite[end if] the words.";
				humiliate 75;
			otherwise:
				say "[if the delicateness of the player < 3]You say nothing and stick out your tongue at the camera[otherwise if the delicateness of the player < 6]You avert your eyes from the camera and say nothing[otherwise]You quickly avert your eyes from the camera, trying not to tremble as you purposefully say nothing[end if].";
				increase detention-turns by 2;
	otherwise:
		say "You [one of]shiver[or]shudder[or]cringe[in random order] with shame.";
		humiliate 50.
	

This is the detention orgasm announcement rule:
	if detention chair is grabbing the player and the player is able to speak:
		if the player is feeling submissive or the fatigue of the player > 200:
			say "You hear the camera in the corner focusing on you, and loudly blurt out the truth. [line break][variable custom style]'[one of]I CAME FROM BEING IN DETENTION!'[or]MY DETENTION PUNISHMENT JUST MADE ME CUM!'[or]ANYONE WHO CAN SEE ME SHOULD KNOW I JUST CAME FROM BEING IN DETENTION!'[in random order][roman type][line break]";
			repeat with M running through monsters in the location of the player:
				say detention orgasm reaction of M;
				humiliate 45;
			humiliate 100;
		otherwise:
			say "[one of]You can't help but feel like you're being watched right now[or]You know you can't pretend that didn't just happen[or]The camera in the corner is pointing right at you[or]You know the camera was pointing right at you when you came[at random]. Announce that you just came?[line break]";
			if the player consents:
				say "[variable custom style]'[one of]GUESS WHO JUST CAME FROM BEING IN DETENTION!'[or]I[']M A [if diaper quest is 1]NAUGHTY BABY[otherwise]DIRTY SLUT[end if] WHO CAME FROM BEING IN DETENTION!'[or]LOOK AT ME! DETENTION MADE ME CUM!'[or]MY DETENTION PUNISHMENT JUST MADE ME CUM!'[or]ANYONE WHO CAN SEE ME SHOULD KNOW I JUST CAME FROM BEING IN DETENTION!'[in random order][roman type][line break]";[TODO: more interesting + nearby monsters react]
				repeat with M running through monsters in the location of the player:
					say detention orgasm reaction of M;
					humiliate 55;
				humiliate 100;
			otherwise:
				say "You [if the delicateness of the player < 2]look right at the camera, refusing to say anything[otherwise]look away from the camera and say nothing[end if][if the number of monsters in the location of the player > 0], hoping your silence will prevent anyone around you from catching on[end if].";
				repeat with M running through monsters in the location of the player:
					if (the player is male and a random number between 1 and 2 is 1) or a random number between 1 and 4 is 1:[it's a lot harder to hide an orgasm when you just jizzed everywhere]
						say detention orgasm reaction of M;
						humiliate 40;
				increase detention-turns by 4;
		rule succeeds.
The detention orgasm announcement rule is listed last in the orgasm resolution rules.

To say detention orgasm reaction of (M - a monster):
	say "[speech style of M]'[one of]Wow, so you[']re really enjoying your punishment THAT much?'[or]What kind of desperate slut actually has an orgasm from something like that?'[or]Is that why you earned yourself a detention? So everyone could watch you cum?'[or]So, you got in trouble on purpose then?'[or]I hope I don[']t get detention after you.'[in random order][roman type][line break][M] can't help but watch you.".

To say detention orgasm reaction of (M - a teacher):
	say "[speech style of M]'[one of]If you enjoy the punishment that much, maybe you should be the one to clean the floor when you[']re done.'[or]Pathetic. That wand isn't even on the highest setting.'[or]Honestly, you haven[']t even been in the chair that long.'[in random order][roman type][line break][M] rolls [his of M] eyes as [he of M] watches you.".

[
More detention ideas:

Hole
-Player has to work a gloryhole for high level students. (timer)

Tutoring
-Player is paired up with a student of higher or equal rank(or lower rank if absolutely necessary)
-Sex here, maybe?

Conference(maybe this would be better as a thing that happens naturally)
-The player is taken to the headmistress, who contacts someone the player knows (ex, room-mate 1, room-mate 2, room-mate 1 and 2)
-The person comments on the player's appearance somehow, and (maybe) has the chance to mess with the player remotely

]

[Two ideas here:
The player watches a pornographic video in class and has to write a report on what insights the narrator had on "<insert idea here>"

The player is strapped into a chair and has to watch a "remedial" seminar to make up for lost class time. Really it's a hypno screen that the player has to stare at for a while

]

[player is forced to watch a hypno video]
To compute remedial detention of (M - a staff member):
	now detention chair is detention-remedial;
	now detention-turns is a random number between 8 and 12;
	drag to School13 by M;
	say "[speech style of M]'[if the health of M < the maxhealth of M]Clearly you need extra curriculum if you believe you have the time to be aggressive with teachers[otherwise]If you can't get to class on time then you'll have to catch up the hard way[end if]. Sit.'[roman type][line break][big he of M] points to the chair in the centre of the room.";
	[if diaper quest is 0 or the number of worn diapers is 0, compute TQChairSetup of M;[in TQ underwear is always removed]
	otherwise compute DQChairSetup of M;]
	say "[if the delicateness of the player > 10]You crawl over to the [detention chair] and pull yourself into it[otherwise if the delicateness of the player > 4][BigNameDesc of M] drags you over to the [detention chair] and waits as you obediently pull yourself into it[otherwise][BigNameDesc of M] drags you over to the [detention chair], cruelly pinching your ear until you pull yourself into it[end if]. [big he of M] quickly straps you in place as a giant screen slowly lowers from the ceiling.[line break][speech style of M]'[one of]This is an advanced class, for YOUR benefit. Pay attention.[or]Pay attention this time.'[stopping][roman type][line break]She slides a pair of headphones into place over your ears, quickly leaving the room as the screen flickers to life and a [one of]syncopated[or]familiar[stopping] rhythm begins playing.";
	if diaper quest is 0, say "A large, well-lit room fades onto the screen, and the music's volume slowly rises as a gorgeous [if tg fetish is 1]transsexual [end if]pornstar struts in from out of frame, wearing a form-fitting latex dress. [line break][first custom style]'Welcome to my classroom, students. Shut off your minds and let your bodies pay attention, girls.'[roman type][line break]The pulsing, rhythmic effect of the music creates a hypnotic swirling effect that burns itself into your vision, and you suddenly realize how [if the player is male]hard[otherwise if the player is female]wet[otherwise]horny[end if] you've gotten as the screen fades to black and 'Chapter 1' appears in the center of the frame. You have no choice but to fight off the hypnosis until you're released!";
	otherwise say "PLACEHOLDER";
	compute room leaving of M;
	now M is in Holding Pen;
	now School13 is bossed;
	now the stance of the player is 1;
	now detention chair is grabbing the player.

To compute rem chair detention:
	if detention chair is grabbing the player:
		if detention-turns > 0:
			let C be a random number between 2 and 40;
			let N be a random number between the sex addiction of the player and (the intelligence of the player * -1);
			say RemHypnoContent;
			if N < -9:
				say "The music thumps relentlessly as you [if the sex addiction of the player < 5]do your best to ignore[otherwise]space out through[end if] the rest of the chapter, heart pounding as you [if the sex addiction of the player < 5]try not to watch[otherwise]watch[end if] the graphic sex on the screen.";
				Arouse 50;
			otherwise if N < -3:
				say "The music thumps relentlessly as you struggle through the rest of the chapter, feeling slight echoes of what the professor's interns are doing to her body.";
				humiliate TRIVIAL-HUMILIATION + TRIVIAL-HUMILIATION;
				Arouse 100;
				FatigueUp 3;
			otherwise if N < 6:
				say "The music washes over you as you [if the sex addiction of the player < 5]reluctantly[otherwise]struggle to[end if] take in the rest of the chapter, feeling echoes of what the professor's interns are doing to her body.";
				humiliate SLIGHT-HUMILIATION;
				Arouse 100;
				FatigueUp 7;
			otherwise:
				say "The music washes over you as [if the intelligence of the player > 10]you attentively take in[otherwise]your mind absorbs[end if] the rest of the chapter, feeling everything the professor's interns are doing to her body.";
				humiliate SLIGHT-HUMILIATION + TRIVIAL-HUMILIATION;
				if a random number between 1 and 4 is 1, RandomAddictUp 1;
				Arouse 300;
				FatigueUp 10;
		otherwise:
			let M be a random staff member in Holding Pen;
			if M is staff member:
				now M is in the location of the player;
				say "The camera pans over the professor's body, zooming in [if bukkake fetish is 1]on the cum plastered all over her face[otherwise if diaper quest is 0]on her gaping holes[otherwise]PLACEHOLDER[end if] as the hypnotic pattern finally fades and the syncopated rhythm winds down. [line break][first custom style]'That's all for today ladies. Study hard!'[roman type][line break]The screen flickers off, and a few moments pass before you hear the door unlock and [NameDesc of M] re-enters the room. [big he of M] doesn't say anything as [he of M] removes your headphones and frees you from your bindings.";
				distract M;
				now the location of the player is not bossed;
			otherwise:
				say "BUG: There's no teacher to summon to release the player. The player will be released anyway so the game doesn't freeze!";
			now detention chair is not grabbing the player.
		

To say RemHypnoContent:
	if diaper quest is 0, say "[one of]The camera pans over the professor's body as she's being spit-roasted by two of her interns. [line break][first custom style]'Mnaa mun humnd mnurphrmr.'[roman type][line break][or]The camera zooms in on the professor's asshole as three of her interns pound her at once.[line break][first custom style]'Your sphincter is a muscle, ladies. Always be tight for your man, but never too tight for more!'[roman type][line break][or]The camera zooms in on the professor's face, following the lines of spit ruining her makeup as her interns take turns fucking her face.[line break][first custom style]'Glk! Glk! Glk! Glk!'[roman type][line break][or]The camera zooms in as the professor's interns take turns smacking her in the face. She grins straight into the camera as her hands deftly pump their cocks.[line break][first custom style]'You're always happy to be used, ladies. Only frown because it's over.'[roman type][line break][or]The camera pans slowly as the professor rides one of her interns, zooming in [if tg fetish is 1]on her hand as she rapidly pumps her own cock[otherwise]on her hand as she plays with her clit[end if]. [line break][first custom style]'Only pleasure during his pleasure, ladies.'[roman type][line break][in random order]";
	otherwise say "PLACEHOLDER".


Staff Framework ends here.

