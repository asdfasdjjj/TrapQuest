Warp Portal by Objects begins here.

A warp portal is a kind of thing. A warp portal is not portable. The text-shortcut of warp portal is "wpo". Understand "lever" as a warp portal.
A warp portal has a region called destination. The destination of a warp portal is the dungeon.
A warp portal can be next-portal-forbidden. [The player can't use this portal until they use a different one.]
The printed name of a warp portal is "[TQlink of item described]warp portal[TQxlink of item described][verb-desc of item described]".

hotel portal is a warp portal. hotel portal is in Hotel40.
dungeon portal is a warp portal. dungeon portal is in Dungeon10.
mansion portal is a warp portal. mansion portal is in Mansion32.
school portal is a warp portal. school portal is in School01.

A time based rule (this is the flag dungeon portal as accessible rule):
	if the destination of dungeon portal is dungeon:
		if the location of hotel portal is discovered:
			now the destination of dungeon portal is hotel;
		otherwise if the location of mansion portal is discovered:
			now the destination of dungeon portal is mansion.

[Figure of flexible warp portal is the file "Env/MultiFloor/portal1.png".]
Figure of warp portal is the file "Env/MultiFloor/portal1.jpg".

To decide which figure-name is the examine-image of (C - a warp portal):
	decide on figure of warp portal.

To decide which direction is the covered-direction of (C - a warp portal):
	decide on north.

To say ExamineDesc of (C - a warp portal):
	say "This giant swirling green portal in the [covered-direction of C] wall will teleport you to another part of the world[if C is next-portal-forbidden]. Or rather it usually would, but right now this one won't be able to take you anywhere - it's glitching wildly! [bold type]You'll need to go find and use another portal in another region of the world first.[roman type][line break][otherwise].[end if]".

Definition: a warp portal is immune to change: decide yes.

Check entering a warp portal:
	try going the covered-direction of the noun instead.

Check pulling a warp portal:
	try turning the noun instead.

[increase the chance of a team predicament by sending a student down if available from the hallway]
Report going south when the player is in School01:
	let ST be a random student in School02;
	if the number of students in School01 is 0 and ST is student:
		try ST going south.

[To say DestinationDesc of (T - a warp portal):
	if T is regionally in school and the destination of T is school:
		say "The warp portal will now take you to[one of]... the 'Extra Credit' zone? What's that?! Text underneath reads [bold type]'Removes all cursed clothing and earns participating students a [']trophy['].'[if newbie tips is 1][line break][newbie style]Newbie tip: The Extra Credit zone puts you in a predicament where you lose a lot of dignity and 'real world reputation' (the latter of which is only relevant for epilogues). Cursed clothing (except headgear) will be removed but will cost you 1 strength if you don't put it back on after you complete the task. You will earn one 'trophy' which gives you the option to tweak a rule of the game universe and also gives you a permanent +1 to luck rolls. Finally, each time you go into the predicament zone, one of each type of crafting token will be lying on the floor somewhere in the region. So if you happen to stumble across any, you can nab yourself that extra bonus. Or if you're brave, you could even go searching for them...[end if][roman type][line break][or] the 'extra credit' zone again, where you can free yourself from cursed clothing and earn a trophy.[stopping]";
	otherwise if T is next-portal-forbidden:
		say "The warp portal won't currently be able to take you anywhere - it's glitching wildly!";
	otherwise if T is not regionally in the destination of T:
		say "The warp portal will currently take you to the [destination of T].".]

To say unique-verb-desc of (T - a warp portal):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]enter[close bracket][as]enter [text-shortcut of T][end link] [link][bracket]switch[close bracket][as]pull lever[end link]".

The can't go that way rule is not listed in the check going rulebook.

Check an actor going (this is the can't go that way except for warp portals rule):
	if the room gone to is nothing or the room gone to is Solid Rock:
		if the noun is down, try foodlisting instead;
		if the door gone through is nothing:
			let WP be a random warp portal in the location of the player;
			if WP is warp portal and the covered-direction of WP is the noun and (WP is not regionally in the destination of WP or the destination of WP is school):
				if WP is next-portal-forbidden:
					if the actor is the player:
						say "This portal seems to currently be on the fritz - it's glitching wildly! [We] [can't go] that way.";
					stop the action;
				otherwise if the class of the player is trick-or-treater:
					if the actor is the player:
						say "Your [random worn headgear] is somehow preventing [us] from leaving while [we][']re a [']trick or treater[']!";
					stop the action;
			otherwise:
				if the actor is the player:
					say "[We] [can't go] that way." (A);
				stop the action;
		otherwise:
			if the actor is the player:
				say "[We] [can't], since [the door gone through] [lead] nowhere." (B);
			stop the action.

To decide which direction is the covered-direction of (C - school portal):
	decide on south.

predicamentJustDone is initially false. [We only want one 'extra credit' predicament between each lesson.]
predicamentSavedMakeUp is a number that varies.

To set up predicament status:
	repeat with C running through held things:
		if C is clothing and (C is worn or C is not diaper): [held used diapers don't get refreshed]
			fully clean C;
		if C is worn:
			if C is clothing and C is removable and C is not headgear and C is not combat visor and C is not armband:
				dislodge C;
				if C is cursed and the raw strength of the player > 1:
					say "[bold type]As your [ShortDesc of C] is removed, you feel the curse steal some [one of]of your strength! You probably can only recover the strength by wearing it again after you get it back...[or]more of your strength.[stopping][roman type][line break]";
					increase the stolen-strength of C by 1;
					decrease the raw strength of the player by 1;
				now C is in Predicament20;
			otherwise if tough-shit is 0 and C is not armband and C is not combat visor:
				now C is in Predicament-Pen;
				add C to predicamentPenList;
			otherwise:
				now C is predicament-fixed;
		otherwise if C is not worn:
			now C is in Predicament20;
		otherwise:
			now C is predicament-fixed;
	if tough-shit is 0:
		now predicamentSavedMakeUp is the make-up of face;
		now the make-up of face is 1;
		now the arousal of the player is 0;
		now the soreness of vagina is 0;
		now the soreness of asshole is 0;
		if the bladder of the player > 1, now the bladder of the player is 1;
	now the semen coating of face is 0;
	now the semen coating of hair is 0;
	now the urine coating of hair is 0;
	now the semen coating of breasts is 0;
	now the semen coating of belly is 0;
	now the semen coating of thighs is 0;
	now the semen volume of vagina is 0;
	now the air volume of breasts is 0;
	now the air volume of hips is 0;
	now the air volume of belly is 0;
	empty belly;
	MouthEmpty;
	now the stance of the player is 0;
	display inventory-focus stuff; [can't force immediate inventory-focus redraw because the empty list would actually be correct and then it wouldn't redraw]
	refresh the inventory-focus-window. [just to be sure]

To set up predicament clothing for (P - a predicament):
	repeat with C running through on-stage wearthings:
		if C is not in Predicament20 and (C is held or C is in a predicament room) and C is not predicament-fixed, now C is predicament-temporary.

To teleport via (W - a warp portal):
	let D be nothing;
	now team-predicament-partner is nothing;
	let NPF be 0;
	let NOptions be 0;
	let predicamentsAvailable be 0;
	if W is school portal:
		if receptionist is in the location of the player:
			let ST be a random student in the location of the player;
			if ST is student, now team-predicament-partner is ST;
		now predicamentsAvailable is the number of appropriate eligible predicaments;
		now team-predicament-partner is nothing;
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	if W is not in the Dungeon:
		set next numerical response to "go to the Dungeon";
		increase NOptions by 1;
	if W is not in the School and ((armband is worn and (class-time < 0 or armband is solid gold)) or ex-princess is unconcerned):
		set next numerical response to "go to the School";
		increase NOptions by 1;
	if W is not in the Hotel and location of hotel portal is discovered:
		set next numerical response to "go to the Hotel";
		increase NOptions by 1;
	if W is not in the Mansion and location of mansion portal is discovered:
		set next numerical response to "go to the Mansion";
		increase NOptions by 1;
	if W is school portal and (the player is an october 2019 top donator or the player is an october 2019 diaper donator) and predicamentJustDone is false and predicamentsAvailable > 0 and the player is predicament-ready:
		set next numerical response to "go to the Extra Credit Zone";
		increase NOptions by 1;
		if newbie tips is 1, say "[one of][newbie style]Newbie tip: The Extra Credit zone puts you in a predicament where you could lose a lot of dignity and 'real world reputation' (the latter of which is only relevant for epilogues). Cursed clothing (except headgear) will be removed but will cost you 1 strength if you don't put it back on after you complete the task. [if tough-shit is 0]Other things like tattoos and make up will disappear for the duration of the predicament and reappear at the end. [end if]You will earn one 'trophy' which gives you the option to tweak a rule of the game universe and also gives you a permanent +1 to luck rolls. Finally, each time you go into the predicament zone, one of each type of crafting token will be lying on the floor somewhere in the region. So if you happen to stumble across any, you can often nab yourself that extra bonus. Or if you're brave, you could even go searching for them...[roman type][line break][or][stopping]";
	if NOptions is 0, say "BUG! Player was able to enter a warp portal with zero viable exits...";
	unless the printed name of (the chosen numerical response of NOptions) matches the text "Extra" or the player is not a top donator, say "[line break][newbie style]You are currently unable to access the Extra Credit Zone because [if the player is not an october 2019 top donator and the player is not an october 2019 diaper donator]your unlock file is not up-to-date enough[otherwise if predicamentJustDone is true]you haven't returned to the main game world since your most recent extra credit session[otherwise if the number of appropriate eligible predicaments is 0]there are no more predicaments coded for the combination of your current rank, sex, and fetish selection[otherwise if the latex-transformation of the player > 0 or black hood is worn]it wouldn't interact well with your rubbery state[otherwise if (class-time is 1000 or class-time < 0) and armband is worn and armband is not solid gold and there is an alive undefeated correctly-ranked teacher]you need to go to class before you can apply for extra credit[otherwise if there is worn locked clothing]you are wearing locked clothing[otherwise]something you are currently wearing (not including headgear) is flagged as not being appropriate to remove (perhaps something with the curse quest of wearing it until your next lesson)[end if].[roman type][line break]";
	if NOptions > 1, compute multiple choice question;
	otherwise now player-numerical-response is 1;
	let T be the printed name of chosen numerical response;
	if T matches the text "Dungeon":
		now the destination of W is the Dungeon;
	otherwise if T matches the text "School" or T matches the text "Extra":
		now the destination of W is the School;
	otherwise if T matches the text "Hotel":
		now the destination of W is the Hotel;
	otherwise if T matches the text "Mansion":
		now the destination of W is the Mansion;
	if W is in the school:
		if the destination of W is not school:
			if predicamentJustDone is false and receptionist is in the location of the player:
				let M be receptionist;
				repeat with ST running through alive unfriendly students: [find a really angry student]
					if a random number between the favour of M and 10 < 9, now M is ST;
				if M is student:
					now team-predicament-partner is M;
					if there is an eligible appropriate predicament and the player is predicament-ready:
						now M is in the location of the player;
						say "[bold type]Just as you begin to step into the warp portal, [NameDesc of M] [bold type]appears and yanks on a nearby lever! [roman type][big he of M] grins a mischievous, vindictive grin and waves goodbye as the destination changes to the 'extra credit zone'!";
						satisfy M;
						now the destination of W is school;
		if the destination of W is dungeon:
			if armband is not sapphire and armband is not emerald and armband is worn:
				if Hotel40 is not discovered:
					if Woods01 is unplaced:
						Set Up The Woods;
						follow the setting up woods monsters rules;
						repeat with M running through alive nonexistent monsters:
							set up M;
					if Hotel01 is unplaced:
						Set Up The Hotel;
						follow the setting up hotel monsters rules;
						repeat with M running through alive nonexistent monsters:
							set up M;
					now the destination of W is hotel;
					say "[bold type]The warp portal appears to shudder and glitch as you step into it. It's sending you to somewhere you didn't ask to go! Uh-oh...[roman type][line break]";
					now NPF is 1;
				otherwise if armband is not ruby and Mansion32 is not discovered:
					if Woods01 is unplaced:
						Set Up The Woods;
						follow the setting up woods monsters rules;
						repeat with M running through alive nonexistent monsters:
							set up M;
					if Mansion01 is unplaced:
						Set Up The Mansion;
						follow the setting up mansion monsters rules;
						repeat with M running through alive nonexistent monsters:
							set up M;
					now the destination of W is mansion;
					say "[bold type]The warp portal appears to shudder and glitch as you step into it. It's sending you to somewhere you didn't ask to go! Uh-oh...[roman type][line break]";
					now NPF is 1;
	repeat with P running through warp portals:
		now P is not next-portal-forbidden;
		if P is regionally in the destination of W, now D is P;
	if D is warp portal, now the destination of D is playerRegion; [The portal you just went through will send you right back to where you were unless you pull the lever]
	if playerRegion is school:
		if the body soreness of the player < 10 and the fatigue of the player > 0, say "[bold type]As you go through the portal, you find your fatigue leaving you.[roman type][line break]"; [no point telling the player that they have a fatigue refresh at 0% HP]
		now the fatigue of the player is 0;
	zero focus stuff;
	if W is D: [School portal leads to extra credit zone. Anything added here might also need to be added to the detention code in Staff Framework.i7x]
		now the destination of W is the Dungeon;
		display entire map;
		let L be the list of eligible appropriate predicaments;
		say "As you go through the portal, you feel your clothing stolen away by some invisible forces![one of][line break][variable custom style]This isn't like before?![roman type][line break][or][stopping][if debugmode > 0][line break]List of appropriate predicaments: [L][line break][end if]";
		set up predicament status;
		sort L in random order;
		let P be entry 1 in L;
		if debugmode > 0, say "selected [P].";
		if team-predicament-partner is not student and receptionist is in the location of the player:
			let ST be a random student in the location of the player;
			if ST is student:
				now team-predicament-partner is ST;
				if there is an eligible appropriate team-predicament and a random number between 1 and 4 > 1:
					now P is a random eligible appropriate team-predicament;
					if debugmode > 0, say "After reconsidering joint predicament options and seeing [ST] in the reception area, selected [P].";
		otherwise if team-predicament-partner is student:
			if there is an eligible appropriate team-predicament and a random number between 1 and 3 > 1, now P is a random eligible appropriate team-predicament;
			if debugmode > 0, say "After reconsidering joint predicament options, selected [P].";
		if P is team-predicament:
			say "[paragraph break]Behind [NameDesc of team-predicament-partner], [NameDesc of receptionist] casually struts up and then plants a foot on [NameDesc of team-predicament-partner][']s back![line break][speech style of team-predicament-partner]'What?! No wait-!'[roman type][line break][BigNameDesc of receptionist] kicks forward, and [NameDesc of team-predicament-partner] is pushed into the warp portal alongside you! You're both going in at the same time!";
			now team-predicament-partner is interested;
			update appearance level;
			now the latest-appearance of team-predicament-partner is the appearance of the player;
			if diaper quest is 1, now the latest-cringe of team-predicament-partner is the cringe appearance of the player;
		let TP be a random off-stage fetish appropriate trophy;
		if TP is trophy, now TP is in Predicament20;
		now current-predicament is P;
		now turnsWithSoiledDiaper is 0;
		if the body soreness of the player > 4, now the body soreness of the player is 4;
		now the printed name of Predicament01 is "Abandoned Warehouse";
		repeat with R running through predicament rooms:
			totally clean R;
		execute P;
		set up predicament clothing for P;
		increase the times-completed of P by 1;
		now temporaryYesNoBackground is Figure of small image;
		now predicamentJustDone is true;
	otherwise if D is school portal:
		compute background student promotions;
		if receptionist is alive and receptionist is not in School01, now receptionist is in School01;
		if armband is worn and armband is not solid gold and there is an alive undefeated correctly-ranked teacher and the armband-print of armband is not "new recruit":
			let A be a random appropriate assembly;
			if A is assembly:
				set up A;
			otherwise:
				say "As you go through the portal, you appear back in the School again, just in front of the classroom. After you've gone through, the portal closes behind you. There's a classroom right in front of you. A schoolbell rings - it's time for class right now!";
				if armband is sapphire:
					now the player is in School07;
				otherwise if armband is emerald:
					now the player is in School03;
				otherwise if armband is ruby:
					now the player is in School26;
				otherwise if armband is pink diamond:
					now the player is in School25;
				otherwise:
					now the player is in School24;
			update player region;
			display entire map;
		otherwise:
			now the player is in School01;
			update player region;
			display entire map;
			say "As you go through the portal, you find yourself [one of]in a large room with expensive marble walls and floor[or]back in the school reception[stopping].";
	otherwise if D is warp portal:
		now predicamentJustDone is false;
		now the player is in the location of D;
		if NPF is 1, now D is next-portal-forbidden;
		update player region;
		now the location of the player is discovered;
		display entire map;
		say "As you go through the portal, you appear in the [location of the player][one of]! There is an identical green portal in this room too, to allow you to go back and forth![or]![stopping]".

Warp Portal ends here.
