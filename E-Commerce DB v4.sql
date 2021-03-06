create table ctgry_tbl
(
        categoryid numeric primary key,
        categoryname varchar(50) not null,
        categorydesc varchar(500)
);

insert into ctgry_tbl values (1001,'Action', 'Video game genre that emphasizes physical challenges, including hand–eye coordination and reaction-time.');
insert into ctgry_tbl values (1002,'Adventure','Video game in which the player assumes the role of a protagonist in an interactive story driven by exploration and puzzle-solving.');
insert into ctgry_tbl values (1003,'Role-Playing','A role-playing game (sometimes spelled roleplaying game; abbreviated RPG) is a game in which players assume the roles of characters in a fictional setting.');
insert into ctgry_tbl values (1004,'Shooter', 'Shooter video games or shooters are a subgenre of action video games where the focus is almost entirely on the defeat of the character enemies using the weapons given to the player.');
insert into ctgry_tbl values (1005,'Simulation', 'A simulation video game describes a diverse super-category of video games, generally designed to closely simulate real world activities.');
insert into ctgry_tbl values (1006,'Strategy', 'A major video game genre that emphasizes thinking and planning over direct instant action in order to achieve victory.');


create table admin_tbl
(
        adminid varchar(20) primary key,
        adminpass varchar(20) not null
);

insert into admin_tbl values ('DevBuggers', 'DevBug');

create table user_tbl
(
        userid varchar(20) primary key,
        Email varchar(50) not null,
        Password varchar(20) not null
);

insert into user_tbl values (101, 'ReyMysterio@gmail.com', 'rmysterio');
insert into user_tbl values (102, 'FreddieAguilar@gmail.com', 'FredAguilar');


create table userdetails_tbl
(  
        userdetail_id numeric primary key,
        First_Name varchar(54) not null,
        Last_Name varchar(20) not null,
        Gender varchar(1) not null,
        Address varchar(54) not null,
        Contact numeric,
        userid varchar(20) references user_tbl(userid)
);

insert into userdetails_tbl values (201, 'Rey', 'Mysterio', 'M', 'Mysterious Island', 9213301755, 101);
insert into userdetails_tbl values (202, 'Freddie', 'Aguilar', 'M', 'Long Hair Village', 9669686740, 102);

create table product_tbl
(
        productid numeric primary key,
        productname varchar(50) not null,
        pprice numeric constraint chkpprice check(pprice > 1),
        categoryid numeric references ctgry_tbl(categoryid),
        companyname varchar(50),
        dateReleased date,
        QOH numeric,
        salesNum numeric,
        pdescription varchar(1000),
        imagepath varchar(200)
);

alter table product_tbl modify  (imagepath blob);

ALTER TABLE table_name 
ALTER COLUMN column_name new_data_type(size);


select * from product_tbl

insert into product_tbl values (2001, 'Far Cry 6', 2750, 1001, 'UBISOFT', '21-Oct-2021', 10, 0, 'Antón Castillo rose to power on the promise of restoring the once-prosperous island nation of Yara back to its former glory and plans to forge his vision of paradise by any means necessary. With his 13-year-old son Diego reluctantly following in his father’s bloody footsteps, Antón has the future of Yara clenched tightly in his hands.', null);
insert into product_tbl values (2002, 'Final Fantasy VII Remake', 1695, 1001, 'SQUARE ENIX', '10-Apr-2020', 10, 0, 'They are coming back to Midgar… Mako Reactors are draining the life energy of the planet. The Shinra Corporation rules over a corrupt surveillance state. A few prosper, the rest are left to rot in the city slums of Midgar. That changes tonight. The elite mercenary and ex-SOLDIER Cloud Strife has been hired by the resistance movement AVALANCHE to fight back. Their mission will change the world forever.', null);
insert into product_tbl values (2003, 'Red Dead Redemption 2', 1290, 1001, 'ROCKSTAR GAMES', '13-Jun-2022', 10, 0, 'America, 1899. The end of the wild west era has begun as lawmen hunt down the last remaining outlaw gangs. Those who will not surrender or succumb are killed.', null);
insert into product_tbl values (2004, 'Resident Evil 3 Remake', 1395, 1001, 'CAPCOM', '13-Jun-2022', 10, 0, 'A series of strange disappearances have been occurring in the American Midwest within a place called Racoon City. A specialist squad of the police force known as S.T.A.R.S. has been investigating the case and have determined that the pharmaceutical company Umbrella and their biological weapon the T-Virus are behind the incidents—though they have lost several members in the process. Jill Valentine and the other surviving S.T.A.R.S. members try to make this truth known, but find that the police department itself is under Umbrellas sway and their reports are rejected out of hand.', null);
insert into product_tbl values (2005, 'Horizon Zero Dawn Complete Edition', 750, 1001, 'SONY', '13-Jun-2022', 10, 0, 'Horizon Zero Dawn an exhilarating new action role-playing game exclusively for the PlayStation 4 system, developed by the award-winning Guerrilla Games creators of PlayStation venerated Killzone franchise. As Horizon Zero Dawns main protagonist Aloy, a skilled hunter, explore a vibrant and lush world inhabited by mysterious mechanized creatures.', null);

insert into product_tbl values (4001, 'The Witcher 3 Wild Hunt Complete Edition', 2495, 1002, 'WARNER HOME VIDEO GAMES', '13-Jun-2022', 10, 0, 'Game of the Year Edition includes the critically acclaimed base game, winner of over 250 GOTY awards and most lauded game of 2015 with over 800 awards in total, both expansion packs on Hearts of Stone and Blood and Wine and every piece of downloadable content, as well as every update and improvement ever released.', null);
insert into product_tbl values (4002, 'Monster Hunter Generations Ultimate', 1795, 1002, 'CAPCOM', '13-Jun-2022', 10, 0, 'Take down these monsters and use their materials to forge even more powerful weapons and armor, then prepare for even tougher foes as the story unfolds. Each discovery adds new areas, creatures, and drama to the adventure', null);
insert into product_tbl values (4003, 'Nier: Automata', 1395, 1002, 'SQUARE ENIX', '13-Jun-2022', 10, 0, 'Humanity has been driven from the Earth by mechanical beings from another world. In a final effort to take back the planet, the human resistance sends a force of android soldiers to destroy the invaders. Now, a war between machines and androids rages on... A war that could soon unveil a long-forgotten truth of the world.', null);
insert into product_tbl values (4004, 'Devil May Cry 5', 1095, 1002, 'CAPCOM', '13-Jun-2022', 10, 0, 'The Devil you know returns in this brand new entry in the over-the-top action series. Prepare to get downright demonic with this signature blend of high-octane stylized action and otherworldly and original characters the series is known for. Director Hideaki Itsuno and the core team have returned to create the most insane, technically advanced and utterly unmissable action experience of this generation! The threat of demonic power has returned to menace the world once again in Devil May Cry 5.', null);
insert into product_tbl values (4005, 'Star Wars Jedi Fallen Order', 1295, 1002, 'ELECTRONIC ARTS', '13-Jun-2022', 10, 0, 'On a quest to rebuild the Jedi Order, you must pick up the pieces of your shattered past to complete your training, develop new powerful Force abilities, and master the art of the iconic lightsaber - all while staying one step ahead of the Empire and its deadly Inquisitors.', null);

insert into product_tbl values (6001, 'Persona 5 Royal', 1995, 1003, 'ATLUS', '13-Jun-2022', 10, 0, 'The very popular Persona 5 has sold copies of more than 2.7 million worldwide. And now, reborn through Persona 5: The Royal with new additional elements. Enhanced the previously untold third school semester adds to the student life. The key to approaching depths will unfold through the new character and new powerful enemies.', null);
insert into product_tbl values (6002, 'Kingdom Hearts 3', 650, 1003, 'SONY', '13-Jun-2022', 10, 0, 'Combines worlds of Disney and Final Fantasy', null);
insert into product_tbl values (6003, 'Sekiro Shadows Die Twice', 2195, 1003, 'SONY', '13-Jun-2022', 10, 0, 'In the game, players come face-to-face with larger than life foes; unleash an arsenal of deadly prosthetic tools and powerful ninja abilities to blend stealth, vertical traversal, and visceral head-to-head combat in a bloody confrontation.', null);
insert into product_tbl values (6004, 'Assassins Creed Vahalla', 1695, 1003, 'UBISOFT', '13-Jun-2022', 10, 0, 'Become Eivor, a Viking raider raised to be a fearless warrior, and lead your clan from icy desolation in Norway to a new home amid the lush farmlands of ninth-century England. Find your settlement and conquer this hostile land by any means to earn a place in Valhalla.', null);
insert into product_tbl values (6005, 'Dark Souls III The Fire Fades', 1050, 1003, 'BANDAI NAMCO GAMES', '13-Jun-2022', 10, 0, 'Set in the Kingdom of Lothric, a bell has rung to signal that the First Flame, responsible for maintaining the Age of Fire, is dying out. As has happened many times before, the coming of the Age of Dark produces the undead: cursed beings that rise after death.', null);

insert into product_tbl values (8001, 'Borderlands 3', 2550, 1004, 'SONY', '13-Jun-2022', 10, 0, 'In the visceral and dramatic single-player story campaign, Call of Duty: Modern Warfare pushes boundaries and breaks rules the way only Modern Warfare can. Players will engage in breathtaking covert operations alongside a diverse cast of international special forces throughout iconic European cities and volatile expanses of the Middle East.', null);
insert into product_tbl values (8002, 'Doom Eternal', 1095, 1004, 'BETHESDA', '13-Jun-2022', 10, 0, 'Developed by id Software, DOOM Eternal is the direct sequel to the award-winning and best-selling DOOM (2016). Experience the ultimate combination of speed and power with the next leap in push-forward, first-person combat. As the DOOM Slayer, return to take your vengeance against the forces of Hell. Set to an all-new pulse-pounding soundtrack composed by Mick Gordon, fight across dimensions as you slay new and classic demons with powerful new weapons and abilities.', null);
insert into product_tbl values (8003, 'COD Modern Warfare', 2550, 1004, 'SONY', '13-Jun-2022', 10, 0, 'In the visceral and dramatic single-player story campaign, Call of Duty: Modern Warfare pushes boundaries and breaks rules the way only Modern Warfare can. Players will engage in breathtaking covert operations alongside a diverse cast of international special forces throughout iconic European cities and volatile expanses of the Middle East.', null);
insert into product_tbl values (8004, 'Metro Exodus', 1695, 1004, 'DEEP SILVER', '13-Jun-2022', 10, 0, 'Embark on an incredible journey board the aurora, a heavily modified; Steam locomotive, and join a handful of survivors as they search for a new life in the East.', null);
insert into product_tbl values (8005, 'Prey', 995, 1004, 'BETHESDA', '13-Jun-2022', 10, 0, 'In Prey, you awaken aboard Talos I, a space station orbiting the moon in the year 2032, You are the key subject of an experiment meant to alter humanity forever - but things have gone terribly wrong, The space station has been overrun by hostile aliens and you are now being hunted', null);

insert into product_tbl values (10001, 'Subnautica', 1150, 1005, 'GEARBOX', '13-Jun-2022', 10, 0, 'Dive Into a Vast Underwater World - You have crash-landed on an alien ocean world, and the only way to go is down. Subnauticas oceans range from sun-drenched shallow coral reefs to treacherous deep-sea trenches, lava fields, and bio-luminescent underwater rivers. Manage your oxygen supply as you explore kelp forests, plateaus, reefs, and winding cave systems. The water teems with life, Some of it helpful, much of it harmful', null);
insert into product_tbl values (10002, 'God Eater 2 Rage Burst', 750, 1005, 'BANDAI NAMCO GAMES', '13-Jun-2022', 10, 0, 'God Eater 2being upgraded for the PS4 and PSV means technical improvements will be added to improve immersion like high definition visuals, 5.1 surround sound, and support for the DualShock4 speakers. Of course, it does not end there, as Bandai Namco have put out a press release detailing some of the finer changes to gameplay and story', null);
insert into product_tbl values (10003, 'Harvest Moon One World', 2050, 1005, 'RISING STAR GAMES', '13-Jun-2022', 10, 0, 'Take a trip around the world in the latest entry in the long-running Harvest Moon series! You will ride camels across the deserts of Pastilla, venture deep into the snowy mountains of Salmiakki, and even visit a volcano near the cozy mountain town of Lebkuchen!', null);
insert into product_tbl values (10004, 'The Sims 4', 995, 1005, 'ELECTRONIC ARTS', '13-Jun-2022', 10, 0, 'Enjoy the power to create and control people in a virtual world where there are no rules. Express your creativity as you customize your Sims appearances and personalities, and build them the perfect homes. Develop your Sims relationships, pursue careers, and explore vibrant new worlds.', null);
insert into product_tbl values (10005, 'No Heroes Allowed', 1050, 1005, 'SONY', '13-Jun-2022', 10, 0, 'Become the God of Destruction in a unique real time strategy game utilizing PS VR. Breed monsters to invade human territories, seen in a diorama-like view through the eyes of the God of Destruction. Together with Badman and Badmella, work towards total world domination!', null);

insert into product_tbl values (12001,'Catherine Full Body (Eng Version)', 950, 1006, 'ATLUS', '13-Jun-2022', 10, 0, 'This new twist on the original Catherine, a mature romantic action-adventure puzzle game from the makers of the Persona series, will include a new love interest, "Rin," with distinct storyline elements for the character, and additional puzzle content. Vincents love life has never been so complicated and dramatic.', null);
insert into product_tbl values (12002, 'Ni No Kuni Wrath of the White Witch', 850, 1006, 'BANDAI NAMCO GAMES', '13-Jun-2022', 10, 0, 'Join Oliver as he embarks on an adventure through a world inhabited by new friends and ferocious foes alike in the hopes of bringing back his mother after a tragic incident. With a copy of the Wizards Companion in his hand and his trusty friend Drippy by his side, he will travel across this rich fantasy world to tame familiars, take on enemies, and overcome the countless challenges that stand between him and his mothers salvation.', null);
insert into product_tbl values (12003, 'YS Memories of Celceta', 1895, 1006, 'XSEED GAMES', '13-Jun-2022', 10, 0, 'A bustling town deep in the frontier at the foot of an endless sea of trees… It is into this wild and untamed setting that a young man collapses, memories gone and only his name to guide him. Bereft of his past, Adol Cristin wanders the town of Casnan searching for clues to his identity. Enlisted to explore the sea of trees and map the vast expanses of Celceta – a task which many have attempted in the past, but from which none have ever returned alive.', null);
insert into product_tbl values (12004, 'Atelier Ryza Ever Darkness and The Secret Hideout', 2250, 1006, 'KOEI TECMO GAMES', '13-Jun-2022', 10, 0, 'It is the story of a girl and her friends who are about to become adults, discovering what is most important to them.', null);
insert into product_tbl values (12005, 'Final Fantasy Type -0', 850, 1006, 'SQUARE ENIX', '13-Jun-2022', 10, 0, 'The story focuses on Class Zero, a group of fourteen students from the Vermillion Peristylium, a magical academy in the Dominion of Rubrum. When the Militesi Empire launches an assault on the other Crystal States of Orience, seeking to control their respective crystals, Class Zero is mobilized for the defense of Rubrum. Eventually, the group becomes entangled in the secrets behind both the war and the reason for their existence. The setting and presentation were inspired by historical documentaries, and the story itself was written to be darker than other Final Fantasy titles.', null);


select * from product_tbl

create table PromotionalEvent_tbl
(
        pid numeric primary key,
        eventname varchar(20),
        eventstartdate date,
        eventenddate date,
        eventdesc varchar(50)
);

insert into PromotionalEvent_tbl values (181, 'Christmas Event', '23-Dec-2022', '26-Dec-2022', '30% discount to all Action Game products');
insert into PromotionalEvent_tbl values (182, 'Halloween Event', date '2022-10-30' , date '2022-11-02', '40% discount to all Adventure Game products');

select * from PromotionalEvent_tbl;

create table Coupon_tbl
(
        cid numeric primary key,
        coupname varchar(20),
        coupdesc varchar(50),
        pid numeric references PromotionalEvent_tbl(pid),
        discount numeric,
        categoryid numeric references ctgry_tbl(categoryid)
);

insert into Coupon_tbl values(11, 'Christmas Sale', '30% to all Action Games Category', 181, 30, 1001);

create table cart_tbl
(
        cartid numeric primary key,
        userid varchar(20) references user_tbl(userid),
        productid numeric references product_tbl(productid),
        cartdate date,
        quantity numeric,
        isOnCart numeric
);

insert into cart_tbl values(41001, 101, 2001, '24-May-2022', 10, 1);
insert into cart_tbl values(41002, 102, 4001, '25-Apr-2022', 10, 1);

create table payment_tbl
(
        payid numeric primary key,
        cartid numeric references cart_tbl(cartid),
        tbillamount numeric not null,
        totaldiscount numeric not null,
        cholderName varchar(50) not null,
        cardnum varchar(30) not null,
        cardcvv numeric not null,
        cardexp date not null,
        paymentstatus varchar(20) not null
);

insert into payment_tbl values (20001, 41001, 3900, 275,'Rey Mysterio', 218381647, 414, '30-May-2022', 'Paid');

select * from payment_tbl;

select * from product_tbl;

commit;

select * from product_tbl;

