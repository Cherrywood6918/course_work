INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type)
VALUES ('low', 0, 40, 'if the dragon`s health is low for a long time, then it can get sick or even die', 'health');
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type)
VALUES ('average', 41, 80, null, 'health');
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type)
VALUES ('high', 81, 100, null, 'health');
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type)
VALUES ('wild', 0, 10, 'the dragon was tamed and brought to the farm recently.', 'training');
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type)
VALUES ('elementary', 11, 40,
        'A must-have for every dragon on the farm. The dragon becomes obedient and less aggressive. The dragon can participate in breeding.',
        'training');
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type)
VALUES ('intermediate', 41, 80, 'The dragon can be given for a while', 'training');
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type)
VALUES ('advanced', 81, 100, 'It can be transferred to a new owner', 'training');
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type)
VALUES ('low', 0, 30, 'if the dragon`s happiness is low for a long time, then it can escape from the farm',
        'happiness');
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type)
VALUES ('average', 31, 70, null, 'happiness');
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type)
VALUES ('high', 71, 100, null, 'happiness');

-- Dragon's food
INSERT INTO food (name)
VALUES ('Rocks');
INSERT INTO food (name)
VALUES ('Lava');
INSERT INTO food (name)
VALUES ('Fish');
INSERT INTO food (name)
VALUES ('Ham');
INSERT INTO food (name)
VALUES ('Iron ore');
INSERT INTO food (name)
VALUES ('Flowers');
INSERT INTO food (name)
VALUES ('Vanaheim Fruit');
INSERT INTO food (name)
VALUES ('Geodes');
INSERT INTO food (name)
VALUES ('Fire Weed');
INSERT INTO food (name)
VALUES ('Mutton');
INSERT INTO food (name)
VALUES ('Yak');
INSERT INTO food (name)
VALUES ('Moss');
INSERT INTO food (name)
VALUES ('Dragon hatchlings');
INSERT INTO food (name)
VALUES ('Honeycomb');
INSERT INTO food (name)
VALUES ('Wild Boar');
INSERT INTO food (name)
VALUES ('Eels');
INSERT INTO food (name)
VALUES ('Chickens');
INSERT INTO food (name)
VALUES ('Fruit');
INSERT INTO food (name)
VALUES ('Berries');
INSERT INTO food (name)
VALUES ('Crab');
INSERT INTO food (name)
VALUES ('Death Songs');
INSERT INTO food (name)
VALUES ('Worms');
INSERT INTO food (name)
VALUES ('Grubs');
INSERT INTO food (name)
VALUES ('Sea Slugs');
INSERT INTO food (name)
VALUES ('Honeycombs');

-- Dragon's classes
INSERT INTO classes (name, description)
VALUES ('Boulder',
        'Boulder Class dragons are tough and associated with the earth. They can eat rocks, which many of them melt within their stomachs and regurgitate as lava blasts. Although they have small wings compared to their body size, they are able to fly as fast and as high as most other dragons can.');
INSERT INTO classes (name, description)
VALUES ('Mystery',
        'Little is known about the Mystery Class dragons, due to their stealthy and sneaky nature. Dragons in this class are generally more feared than those in other classes. This Class tends to include the most diverse and interesting range of dragons out of all, most of which exhibit extremely rare and unique traits.');
INSERT INTO classes (name, description)
VALUES ('Sharp',
        'Sharp Class dragons are vain and prideful, and all of them possess sharp body parts. Most of these dragons can fire extremely sharp and poisonous projectiles from their bodies, which can quickly be regenerated. Sharp class dragons adore being stroked and generally made a fuss of. They especially love being complimented, due to their nature.');
INSERT INTO classes (name, description)
VALUES ('Stoker',
        'Stoker Class dragons are hot-headed fire breathers. A notable characteristic of these dragons is their high shot limit and firepower. Some of them are capable of setting themselves, or a part of their body on fire. When Stoker Class dragons become sick or exhausted, they might loose their ability to produce flames.');
INSERT INTO classes (name, description)
VALUES ('Strike',
        'Strike Class dragons are characterized by their extreme speed, high jaw strength, and superior intelligence. Some members of this Class possess pinpoint accuracy and unique abilities that allow them to navigate in their respective environment/atmosphere.');
INSERT INTO classes (name, description)
VALUES ('Tidal',
        'Almost all Tidal Class dragons live in ocean, although some of them have amphibian biology allowing them to survive on land. Few of these dragons are cable of creating flames, but many can generate electricity. Dragons of this class are generally larger than those of other classes. Despite this, they are usually very peaceful ocean dwellers who prefer to be left alone and when trained, are exceedingly loyal. According to Hiccup, Tidal Class dragons don''t react well to signs of aggression.');
INSERT INTO classes (name, description)
VALUES ('Tracker',
        'Tracker Class dragons have a highly acute sense of smell and taste that enables them to effortlessly track down and find anything.');
INSERT INTO classes (name, description)
VALUES ('Unknown',
        'Some species of dragons have not yet been officially classified into any class and may be sorted in the future. The reasons for this lack of information varies.');

-- Boulder Class species
INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Dark Grey or Brown with Pale underbelly', 'Magma slobber from trifurcated jaws',
        'Filled with spikes;Triple-split jaw;Tough rock-like skin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season, hatching_age,
                          puberty_age, appearance_id, rarity)
VALUES ('Catastrophic Quaken', 1, null, false, 'Curling into a boulder;Creating a shockwave', 'day', 'autumn', 3, 10, 1,
        0.7);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 1);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Crimson with purple details and light underside',
        'Molten lava', 'Metallic, moose-like antlers;Axe-shaped tail;Rock-shaped spines');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Crimson Goregutter', 1, null, false,
        'Blazing antlers;Ear-splitting call',
        'day', 'spring', 4, 12, 2, 0.1);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 2);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Bright red and yellow with dirty brown plates',
        'Large-scale lava spew',
        'Spiky lobes and protrusions on back and tail;Large, round head;Tiny forelegs');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Eruptodon', 1, null, false,
        'Burrowing through the crust of a dormant volcano;Eating extremely large amounts of lava;Stopping and causing volcanic eruptions;Lava-proof skin;Heat-resistant saliva',
        'day', 'spring', 4, 12, 3, 0.3);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 3);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Mainly red with yellow spots;Orange',
        'Pulse blasts',
        'Double-horned head;Long body;Spines along the back;Yellow rings along body');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Grapple Grounder', 1, null, false,
        'Strangling victims', 'night', 'summer', 2, 7, 4, 0.12);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 4);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 4);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Icy blue and white', 'Liquid nitrogen',
        'Covered in snow and ice;Cold-blooded;Icicles below chin;Spikey ridges along the back, jaws, and limbs');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Groncicle', 1,
        'Groncicles are a peaceful, friendly, non-aggressive species. Having been the first dragons to ever be peaceful with humans (with the ancient Vikings of Icestorm Island), they are naturally kind with people. So, it won`t be difficult to tame this dragon.',
        true,
        'Freezes water around it as it swims;Condenses the water vapor in the clouds', 'night', 'winter',
        4, 16, 5, 0.87);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 5);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 5);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Reddish brown',
        'Heptane/oxygen + rock = Lava blast',
        'Eyes lower on head;Clubbed tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Hotburple', 1,
        'Hotburples are one of the easiest dragons to tame, due to their indolent, sedentary and docile nature', true,
        'Sleep-flying;Immense jaw strength;Biting through dragon-proof metal', 'day', 'summer', 3, 9, 6, 0.83);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 6);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 6);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (5, 6);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 6);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Stony grey with mossy green highlights',
        'Funeral pyre fire',
        'Large body covered in scutes, rounded tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sentinel', 1,
        'To those who showcase the right intentions, Sentinels appear to be less hostile. Although their instinct to guard and protect is strong, a Sentinel will use its intelligence to know who is a friend and who is not. By helping them guard the area and proving that you are of no threat, Sentinels will grant you the respect and lower their aggression, even allowing you in and out of the island. Their trust can be earnt.',
        true,
        'Wing blasts;Remaining motionless for days at a time;Extremely developed senses except for sight;Hibernation',
        'day', 'autumn', 1, 11, 7, 0.12);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 7);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 7);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Chartreuse;Aquamarine with purple to brown stripes',
        'Brightly-colored fire',
        'Pointed chin;Head frill;Paddle-shaped tail;Stubby arms');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Shovelhelm', 1,
        'Shovelhelms can be coaxed with fish. If they are curious, let them help you build something. Like the majority of Boulder Class dragons, Shovelhelms are amiable with generally friendly personalities, unless feeling threatened: they also don''t like to jump straight into a fight, indicating that training one would presumably be fairly straightforward.',
        true,
        'Digging with chin;Hammering with head', 'day', 'summer', 2, 19, 8, 0.97);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 8);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 8);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Blue and red;Green and orange',
        'Crystal-flecked fireballs',
        'Spiked tail bludgeon;Nasal horn;Diamond-sharp teeth');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Snafflefang', 1,
        'Snafflefangs are relatively easy to tame, as they are calm and peaceful dragons. If a person saves a Snafflefang`s life, the dragon will be forever thankful and will stay close to its savior.',
        true, null, 'day', 'summer', 2, 9, 9, 0.22);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 9);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (8, 9);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Bright red back and wings with a white belly',
        'Small balls of fire',
        'Six legs;Huge clawed forearms;Small spines along the back;Small wings;A horn on chin and nose');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Thunderpede', 1,
        'This dragon is difficult to tame, you need to bring a lot of delicacies and be patient.',
        true, 'Pulverizing boulders', 'day', 'spring', 3, 13, 10, 0.27);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 10);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Grayish steel green body with red spikes',
        'Concentric rings of fire',
        'Large head and mouth with rotating teeth inside;Sharp spines;White bulging eyes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Whispering Death', 1,
        'Whispering Deaths are almost untrainable. They are very destructive and aggressive in nature, attacking anything in their way and are generally feared by other dragons and humans in general. The only way to train a Whispering Death would be to capture it and take your time until you eventually gain its trust or by raising one as a hatchling',
        true, 'Tunneling;Spine shot;Rotating teeth;Vacuum effect;Immunity to dragon nip', 'day', 'autumn',
        1, 7, 11, 0.82);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 11);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 11);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 11);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 11);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 11);

-- Mystery Class species

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Pale green;Purple;Orange',
        'Oxygen-acetylene',
        'Metal armor;Pair of twisted horns;Chain-whip tail;Long claws;Long spikes on knees');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Armorwing', 2,
        'Not much is known about training Armorwings, but like most dragons, bonding with them requires trust. While they appear aggressive and somewhat stand-offish, helping them again and proving yourself as no threat will assure them that the human is trustworthy. This is seen when Hiccup passed Bandit a piece of scrap metal and the Armorwing gladly accepted it, dipping its head in gratitude.',
        true, 'Magnetic body;Whipping tail;Blinding flames', 'night', 'summer', 2, 14, 12, 0.92);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 12);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Pale green with white bones as armor',
        'Billowing flames',
        'Bone armor;Clubbed tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Boneknapper', 2,
        'According to Gobber, to train a Boneknapper, one must give it whatever it desires. It will then become like "an overgrown puppy dog".',
        true, 'Bone armor;Thundering roar', 'day', 'summer', 1, 7, 13, 0.28);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 13);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Brown and bronze;Green and yellow',
        'Exploding, uncontrollable flames',
        'Armored body;Ram-like horns;Small rows of spines along back;Short legs');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Buffalord', 2, null,
        false,
        'Inflating its body to an immense size;Shooting spines from any part of its body;Extremely potent saliva',
        'day', 'winter', 5, 17, 14, 0.43);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 14);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 14);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (12, 14);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Black with yellow stripes',
        'Bright green fire',
        'Glands that produce flammable mucus on back and tail;Collapsible skeleton;Upper beak;Absence of wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Cavern Crasher', 2, null, false,
        'Fitting through small spaces;Producing a special flammable mucus from its back;Burrowing',
        'day', 'summer', 4, 13, 15, 0.65);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (13, 15);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Green with a cream underbelly',
        'Hot, corrosive, viscous acid',
        'Side horns protruding from head;Antennae with leaf-like lobes;Underbite;Nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Changewing', 2,
        'They enjoy mimicry, so if one tries to mimic them, be it by their noises or their movements, they will find the individual fascinating.',
        true, 'Camouflage;Prehensile tail;Hypnosis', 'day', 'summer', 4, 14, 16, 0.77);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 16);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 16);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (14, 16);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (15, 16);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Striking colors of blue, yellow, and orange',
        'Amber-like substance that hardens quickly',
        'Colorful wings;Fins on the head;Long spines along the back;Long horns;Barbles');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Death Song', 2,
        'It is unknown if adult Death Songs can be trained, but it proved to be possible with a baby Death Song, Garff, who with the riders after they sang to it. Fishlegs also discovered from Garff that Death Songs can be calmed using dragon nip, though they do not take it as willingly as other dragons.',
        true, 'Siren-like luring song;Spitting amber to immobilize its prey;Immunity to eels', 'night', 'spring', 4, 12,
        17, 0.29);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 17);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (16, 17);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 17);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 17);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Dark blue and red',
        'Flaming facsimiles',
        'Spiky head;Small forelimbs;Finned tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Dramillion', 2,
        'Despite their near-extinction status due to the Dragon Hunters, most Dramillions can be trained very easily. In order for one to tame a Dramillion, showing the dragon that you mean no harm is enough for it to let the guard down. Like most dragons, a Dramillion''s trust can be earned by touching it gently on the snout or helping it if needed.',
        true, 'Mimic fire from other dragons;Hunting in packs;Sharing fire reserves;Camouflage', 'day', 'summer',
        3, 17, 18, 0.92);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 18);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Bioluminescent neon blue with a lighter underbelly',
        'Paralyzing toxic mist',
        'Wing tendrils;Split tail;Translucent wings;Barbells;Ghostlike glow');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Flightmare', 2,
        'It remains unclear as to whether or not Flightmares can be trained, as their extreme aggression and hostility towards anyone in order protect their food source makes it virtually impossible to even approach one, much less train it. However, if one is willing to make an attempt at bonding with a Flightmare, approach alone and with caution, as multiple present individuals will quickly make the solitary dragon feel outnumbered, and show the Flightmare you are not a threat to either it nor its glowing food source.',
        true, 'Glows brighter when consuming glowing algae;Loud banshee-like scream;Can freeze victims with its mist',
        'night', 'winter', 2, 13, 19, 0.64);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 19);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 19);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Light brown with green shades',
        'Lava and acid',
        'Wood-like skin;Covered in foliage and trees;Beard-like tendrils;Double nasal horn;Hair-like appendages');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Foreverwing', 2,
        null, false, 'Telepathy;Camouflage;Commanding dragons;Creating calming compounds',
        'day', 'spring', 20, 130, 20, 0.46);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Mainly green, blue, or gold with spots ',
        'Ammonium nitrate mixed with anhydrous hydrazine',
        'Two heads;Horns;Split tail;Lobs along necks, back, and tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Hideous Zippleback', 2,
        'To train a Zippleback, you must feed both heads at once, then play with the dragon to keep it occupied. Another way to train one is to save a Zippleback''s life. If this is done, they will be completely loyal to the person no matter what until they can repay the favor.',
        true, 'Flaming ouroboros; Transmitting brains',
        'day', 'winter', 4, 15, 21, 0.74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 21);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 21);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (14, 21);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Purple with dark spots and yellow underside',
        'Incendiary slobber',
        'Small thin spines on the back;Small curved nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Hobgobbler', 2,
        'This dragons seems to be pretty docile as Valka was holding one of the rescued Hobgobblers to examine his health. One of them even ordered his packmates to attack Ragnar the Rock to save Gobber''s life.',
        true, 'Feeding frenzy;Multiplying;Covering themselves with their own slobber to slip through tight spots',
        'day', 'autumn', 4, 11, 22, 0.83);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 22);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Green with brown spots',
        'Purple particles with healing properties',
        'Horns;Double-frilled tail fin;Frill along back;Slender neck;Nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Prickleboggle', 2,
        null, false, 'Healing powers;Defensive skin',
        'day', 'spring', 2, 15, 23, 0.54);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 23);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'GGreen and beige',
        'Fusing blasts',
        'Large head;Long neck;Prehensile tail;Spikes along side of body');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sandbuster', 2,
        null, false, 'Burrowing',
        'night', 'summer', 5, 15, 24, 0.65);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Blue with black stripes',
        'Amber-like substance',
        'Colorful wings;Fins on the head;Long spines along back;Long horns;Barbles');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Slithersong', 2,
        'Not much is mentioned about training the Slithersong, apart from the fact that it is incredibly hard to do so, deemed ''impossible'' and only for the most elite of trainers.',
        true,
        'Siren-like luring song;Mimicking sounds;Immobilizing its prey;Immunity to eels;Blinding',
        'night', 'autumn', 2, 12, 25, 0.13);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 25);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Red with black and yellow stripes',
        'Venom spit',
        'Long snake-like body;Irregular spikes on the head;Small claws on wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Slitherwing', 2,
        'The Slitherwing`s extremely aggressive and instinct-driven nature and high levels of toxicity render it very difficult, if not impossible, to train. Even so, according to Rise of Berk, Slitherwings are able to be trained, although it requires some time and introductions to humans.',
        true,
        'Spilling poison secreted from the skin;Extremely foldable wings;Immunity to a Death Song`s amber and call',
        'day', 'winter', 2, 13, 26, 0.81);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (21, 26);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Dark and light grey',
        'Smoke and extremely hot air',
        'Yellow eyes;Skull-like head;Smoke-like tail;Spines along back;Nasal horn flanked by two smaller ones');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Smothering Smokebreath', 2,
        'Create a fancy nest, made of the best scrap metal you can find. Whether the Smokebreaths decide to move in or take it apart is up to them, though.',
        true, 'Creating a veil of smoke;Creating nests from metal',
        'night', 'spring', 1, 15, 27, 0.22);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 27);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (20, 27);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 27);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Green with red and yellow spots',
        'Methane mist;Acid',
        'Four heads;Leaf-like spines;Triple split jaws;Antennae;Forked tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Snaptrapper', 2,
        'Just like Hideous Zipplebacks, Snaptrappers'' trust can be earned if all heads are treated in equal measure. They can also be tamed if approached while playing in mud.',
        true, 'Baits victim with a sweet smell;Emitting obnoxious odors',
        'day', 'summer', 6, 16, 28, 0.74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 28);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Sandy yellow;Light, pale brown',
        'Corrosive, possibly even sweet, acid',
        'Very small eyes;Long tail;Stripes all over body;Tree-like tongue');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sweet Death', 2,
        null, false, 'Can create a sweet odor to lure prey Tunneling',
        'night', 'autumn', 4, 11, 29, 0.64);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Dark gray;Silver and black;White and golden',
        'Varied depending on metal type',
        'Magnetic skin;Metal armor over body;Red-hot glowing mouth;Spear-tipped tail;Metal spikes along neck and back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sword Stealer', 2,
        null,
        false, 'Magnetic skin attracts various types of metals;Fire type varies depending on metal',
        'night', 'spring', 2, 9, 30, 0.92);


-- Sharp Class species

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Black with brown horns',
        'Orange blasts',
        'Short forearms;Horns;Barbells;Tail that resembles a scythe');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Devilish Dervish', 3,
        'Training Devilish Dervishes is said to be very hard due to their stubborn and unruly behavior, only for the most elite of trainers.',
        true, 'Slicing through trees and anything in its path',
        'day', 'summer', 5, 15, 31, 0.25);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 31);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Creamy underbelly and a variety of bright colors',
        'Blasts of blue fire',
        'Spikes at the back of head;Stocky build;Striped tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Egg Biter', 3,
        null, false, 'Strong bite',
        'night', 'winter', 1, 6, 32, 0.19);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Purple;Red and purple',
        'Teeth darts',
        'Snake-like body;Lots of horns and spikes;Shark like-teeth');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Grim Gnasher', 3,
        null, false, 'Regenerating and shooting teeth;Immunity to Slitherwing venom',
        'day', 'spring', 1, 12, 33, 0.94);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Light woody-brown',
        'Average fireballs',
        'Elongated body;Axe-like snout;Spiky back and tail;Six legs');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Hackatoo', 3,
        null, false, 'Cuts through trees with its sharp snout',
        'night', 'summer', 3, 12, 34, 0.32);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 34);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Greyish green and orange with dark red wings',
        'Rain-resistant fireballs',
        'Large sharp fins on the back and head;Nasal horn;Elongated neck;Short tendrils under the chin;Larger lower jaw');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Raincutter', 3,
        'Raincutters are relatively easy to train, as they are calm and peaceful dragons. If a person saves a Raincutters''s life, the dragon will be forever thankful and will often bring gifts to its savior, as it was the case with Thump and Valka.',
        true, 'Aerodynamic fins used for flight and offense;Picking up food with its long neck',
        'day', 'autumn', 5, 15, 35, 0.36);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 35);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (22, 35);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (23, 35);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Silver;Metallic rust',
        'Bright blue fire',
        'Horn on snout;Sharp spines;Spikes on the edge of wings;Reflective scales');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Razorwhip', 3,
        'These aggressive dragons are hard to train, due to their reclusive nature. However, trusting the dragon, and showing that you are worthy of its trust will win over this dragon''s heart. Heather, for example, nursed her to health when she was badly injured and made use of the dragon training methods the other riders taught her, presumably placing her hand against its snout to form a bond via a physical bond.',
        true,
        'Sharp and telescopic prehensile tail that can be used as a whip;Precise and easily maneuverable in flight;Poisonous tears;Shooting tail barbs',
        'day', 'winter', 3, 12, 36, 0.02);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 36);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (24, 36);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Purple and blue',
        'Flammable drool',
        'Zippleback-like lobs along back;Nadder-based structure;Round head');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Scuttleclaw', 3,
        'Scuttleclaws are extremely easy to train, especially as juveniles. They don''t seem to mind if someone is riding them, and they will continue to play in the air. Even inexperienced riders, such as Eret, can have a partial control of the direction of flight of a Scuttleclaw.',
        true, 'Powerful bite',
        'day', 'autumn', 1, 6, 37, 0.71);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 37);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Blue and purple with gem-like blue spines',
        'Frost',
        'Two small horns under its chin;Striped body;Thin and sharp claws;Spines along the back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Shivertooth', 3,
        null,
        false, 'Slices enemies with its sharp scales;Saliva and scales with healing properties',
        'night', 'winter', 4, 11, 38, 0.24);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Green',
        'Acid blast',
        'Razor-sharp stinger;Red stripes (Lead Stinger);Sail fin on head;Small pair of wings on back;Extendable webbed feet;Theropod-like stature');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Speed Stinger', 3,
        'Speed Stingers were said to be too aggressive to be trained. However, in School of Dragons, it is revealed they can be trained, though only at a young age.',
        true, 'Paralyzing sting;Incredible night vision;Water running',
        'night', 'summer', 1, 9, 39, 0.72);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 39);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Woody-brown body, cream underbelly',
        'Sustained and blazing torus of fire',
        'Two pairs of wings;Head frills;"Smashed" face;Three tail fins');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Stormcutter', 3,
        'Generally, a docile and gentle dragon, training a Stormcutter is easy. All it takes is mutual trust, respect, and a love for dragons, which is shown when Valka meets Cloudjumper. The Stormcutter will be more than willing to accept you after that, making the training process pretty easy.',
        true, 'Exceptional maneuverability and diving;Prehensile claws;Twisting head about 180°',
        'day', 'winter', 5, 17, 40, 0.82);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 40);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Blue with red patterns',
        'Thick stream of fire',
        'Thorn-like spikes on the head frill;Double nasal horn;Long neck with short thorns');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Thornridge', 3,
        null, false, null,
        'night', 'spring', 2, 14, 41, 0.92);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 41);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Woody-brown with lighter underbelly',
        'Oil-based fire',
        'Huge razor-sharp wings;No legs;Long and twisted horns;Slender body and neck;Tendrils under the chin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Timberjack', 3,
        'A Timberjack`s long wings make it impossible for the dragon to scratch its back. However, it has been discovered that if humans scratch any hard-to-reach places for it, the Timberjack will be willing to form a bond with them.',
        true, 'Wing slice;Fire nova attack;Uses its massive wings as shields',
        'night', 'summer', 5, 9, 42, 0.27);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 42);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Blue with yellow pattern',
        'Super-heated air;Streams of fire',
        'Long sharp horn on snout and chin;Long neck;Spines along the neck;Spots on body');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Windstriker', 3,
        null, false, 'Skydiving',
        'day', 'autumn', 5, 18, 43, 0.72);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 43);

-- Stoker Class species

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Golden brown body and tan spots',
        'Firecomb: A topical and flammable gel',
        'Four or five pair of legs;Glowing body;Long twisted horns for the Queen');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Fireworm', 4, null, false,
        'White-hot skin;Queens have venom to reignite the flame of other Stoker Class dragons',
        'night', 'summer', 6, 10, 44, 0.12);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (25, 44);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Multi-colored',
        'Swirling explosions of fire',
        'Membranes between the fingers;Dark-colored stripes;Thick spiked tail;Gecko-like appearance');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Flame Whipper', 4,
        null, false,
        'Wall climbing;Detachable tail;Stretchable tongue;Uses the tongue to aim its fire (increasing the accuracy);Paralyzing poison stored in its tail',
        'day', 'spring', 1, 7, 45, 0.73);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 45);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Green or blue with black stripes',
        'Acid blast',
        'Striped pattern on body;Spike-like frill;Horn on nose');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Gobsucker', 4,
        null, false,
        'Can produce flammable gas from its rear end to aid in taking off, building speed, flying straight, and defense',
        'night', 'winter', 2, 15, 46, 0.48);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Dull green with red to purplish-red',
        'Methane',
        'Three pairs of eyes;Massive size;Clubbed tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Green Death', 4,
        null,
        false, 'Magma-proof skin',
        'day', 'autumn', 4, 10, 47, 0.59);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Purple;Yellow;Red',
        'Ethane expectorant',
        'Large head frill;Tail fin;Underbite');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Hobblegrunt', 4,
        'Hobblegrunts are relatively easy to train, as they are calm and peaceful dragons. If a person saves a Hobblegrunt''s life, the dragon will be forever thankful and will stay close to its savior,',
        true,
        'Color changing skin based on mood;Detecting frill;Altering other dragons'' mood by changing its color;Predicting the future',
        'day', 'summer', 3, 17, 48, 0.62);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 48);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Green with white underbelly',
        'Sonic roar',
        'Row of triangular spines along back;Four spines on tail tip;Rounded head and snout;Wide build');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Large Shadow Wing', 4,
        null, false, 'Summoning Small Shadow Wings to attach onto its wings and become its artillery guns',
        'night', 'spring', 2, 13, 49, 0.72);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Red', 'Kerosene gel',
        'Double-clawed wings;Two pairs of long horns;Sharp spines;Snake-like neck;Snake-like tail with frills;Barbels;Nasal horn;Flammable gel on skin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Monstrous Nightmare', 4,
        'The best way to earn the trust of a Monstrous Nightmare is simply to show it the respect it deserves. Placing a gentle hand on its snout and showing you are not a threat to it is the best way to go. Hiccup even shown to Hookfang that he was no threat to him as he toss his helmet and dagger away. While Nightmares are generally tough, tenacious and rebellious, mutual respect and trust will certainly help both parties in the long run.',
        true, 'Self-immolation;Wing blast;Jaw expansion',
        'day', 'autumn', 4, 12, 50, 0.88);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 50);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (20, 50);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 50);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 50);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Black and dark green',
        'Several discreet fire streams',
        'Double nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Night Terror', 4,
        'Night Terrors are highly trainable dragons both individually or in a group. Throughout the Dragons: Race to the Edge series, Night Terrors are seen being trained to do simple tricks like fetch, trained to utilize their natural alarm instincts to protect the island, and trained to form various shapes in a group.',
        true, 'Creates massive flocks to appear as a larger dragon to scare off predators',
        'night', 'winter', 1, 6, 51, 0.67);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 51);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'blue with red spikes',
        'Methane',
        'Clubbed tail;Three pairs of eyes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Red Death', 4,
        null, false, 'Emits homing signal to control other dragons',
        'day', 'spring', 4, 13, 52, 0.06);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 52);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 52);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (13, 52);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Purple and white',
        'Blue explosive flames',
        'Diamond-shaped wing lobes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Silver Phantom', 4,
        null, false, 'Camouflage above the clouds',
        'day', 'autumn', 5, 14, 53, 0.13);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 53);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (12, 53);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (24, 53);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Orange with red spots and purple chin',
        'Scarlet flames',
        'Two sets of wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Singetail', 4,
        null, false, 'Articulated eyes',
        'day', 'spring', 4, 13, 54, 0.06);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 54);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (25, 54);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 54);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Blue and purple',
        'Explosive molten lava',
        'Row of triangular spines along the back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Small Shadow Wing', 4,
        null, false, 'Dive-bombing',
        'night', 'winter', 4, 9, 55, 0.23);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 55);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 55);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 55);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'highlights on back and pale belly',
        'Propane fire',
        'Arrow-shaped tail tip');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Terrible Terror', 4,
        'They seem to be fairly easy to train. Giving them a light to chase can help out for training as this could be great beginner dragon for young Vikings. Or another way of training Terrible Terrors just to feed them, and, showing great trust, the Terror went to sleep next to him. As long as you prove to be of no threat to it, Terrors are easy and docile companions.',
        true, 'Amazing accuracy',
        'day', 'summer', 2, 11, 56, 0.72);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 56);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (21, 56);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (12, 56);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Bright yellow with pale blue',
        'Green and orange flames',
        'Large crown-like head frill');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Threadtail', 4,
        null, false, 'Poisonous skin',
        'day', 'winter', 1, 8, 57, 0.28);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 57);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 57);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Red',
        'Cyclonic jets of flame',
        'Large wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Typhoomerang', 4,
        'Training a Typhoomerang is easiest when the dragon is young. As a baby, they are rather impressionable and trustworthy. However, if one manages to successfully catch its attention and prove that they are of no harm, the Typhoomerang will slowly bond with them.',
        true, 'Flaming cyclone',
        'day', 'autumn', 2, 14, 58, 0.89);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 58);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 58);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (13, 58);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Red and black',
        'Rabid acid flame bursts',
        'Protruding retractable tusks');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Deathgripper', 5,
        'Deathgrippers are extremely difficult to train, but a person can train one by imprinting on it as a hatchling immediately after it emerges from the egg.',
        true, 'Sedative sting',
        'night', 'spring', 4, 13, 59, 0.57);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 59);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 59);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (21, 59);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'White with a blue and pink tint',
        'Acetylene and oxygen-shaped plasma charges',
        'Cat-like eyes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Blue monster', 5,
        'Due to not having too much contact with humans, Light Furies are very aggressive towards them. However, a Light Fury''s trust can be slowly earned. If a person helps a Light Fury or saves its life, the dragon will return the favor, and will from then on be a friend.',
        true, 'Cloaking via plasma blasts',
        'day', 'winter', 4, 13, 60, 0.05);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 60);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 60);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 60);


INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'White with a blue and pink tint',
        'Acetylene and oxygen-shaped plasma charges',
        'Cat-like eyes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Light Fury', 5,
        'Due to not having too much contact with humans, Light Furies are very aggressive towards them. However, a Light Fury''s trust can be slowly earned. If a person helps a Light Fury or saves its life, the dragon will return the favor, and will from then on be a friend.',
        true, 'Cloaking via plasma blasts',
        'day', 'winter', 4, 13, 61, 0.05);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 61);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 61);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 61);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Jet black',
        'Acetylene and oxygen-shaped plasma charges',
        'Cat-like eyes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Night Fury', 5,
        'A wild Night Fury will likely just fly away and ignore you unless you catch its interest or prevent its flight. It is preferable to catch it without hurting it. Another way is to find its egg and train it from when it hatches.',
        true, 'Dive-bombing',
        'day', 'winter', 2, 12, 62, 0.06);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 62);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 62);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (8, 62);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Dark gray with purple markings',
        'Lightning',
        'Sharp metallic spines on the back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Skrill', 5,
        'Depending on the method, training a Skrill can be incredibly difficult or close to impossible. They are aggressive and stubborn, refusing to be trained even in times of crisis. However, by treating it with respect and showing it mercy instead of hurting it, thus showing that you can accept the Skrill for what it is, you can gain its trust.',
        true, 'Electrokinesis',
        'night', 'winter', 1, 8, 63, 0.42);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 63);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 63);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 63);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Shades of Green',
        'Unidentified breath weapon',
        'Huge wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Songwing', 5,
        null, false, 'Prehensile tail',
        'night', 'summer', 2, 9, 64, 0.28);


INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Snowy white with blue highlights',
        'Frost fusillade',
        'Long ledge under chin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Snow Wraith', 5,
        null, false, 'Thermal vision',
        'night', 'winter', 5, 15, 65, 0.74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 65);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 65);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (23, 65);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Brownish-black',
        'Continuous streams of flames',
        'Three tails that tie together to form one');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Triple Stryke', 5,
        'These dragons are fierce and vicious, thus they are extremely hard to train. However, these dragons do repay their debts. If shown mercy and kindness, the dragon will treat you with respect and compassion and will stop at nothing to protect you.',
        true, 'Unique venom in each stinger',
        'day', 'summer', 2, 7, 66, 0.66);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 66);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (15, 66);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 66);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Dark brown with pale belly',
        'Hail',
        'Fur-like scales');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Woolly Howl', 5,
        null, false, 'Belly blends in with the white clouds',
        'day', 'spring', 5, 21, 67, 0.12);

-- Tidal Class species

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Snowy white',
        'Masses of water that freeze',
        'Large spikes protruding from back of neck');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Bewilderbeast', 6,
        null, false, 'Mind controlling dragons',
        'day', 'winter', 7, 17, 68, 0.23);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 68);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Blue with dark green spots',
        'water blast',
        'Large fin on the back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Fathomfin', 6,
        null, false, 'Expandable gullet',
        'day', 'spring', 2, 5, 69, 0.53);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 69);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Dark navy blue',
        'water blast',
        'Fins instead of legs');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Luminous Krayfin', 6,
        'Due to its sociable and intelligent nature, the Luminuous Krayfin appears to be trainable. What is unclear is whether a Krayfin is trainable if raised from an egg or if an adult is also trainable.',
        true, 'Swimming Speed',
        'night', 'autumn', 2, 11, 70, 0.49);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 70);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 70);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 70);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Deep purple',
        'huge blasts',
        'Long tendrils on chin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Purple Death', 6,
        null, false, 'Creating seaquakes',
        'night', 'spring', 2, 11, 71, 0.45);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 71);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 71);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (21, 71);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (22, 71);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Deep blue',
        'acid',
        'Long tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Submaripper', 6,
        null, false, 'Creating massive whirlpools to sink ships',
        'day', 'summer', 2, 10, 72, 0.37);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 72);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 72);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Sandy brown',
        'Hardened balls',
        'Spikes on wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sand Wraith', 6,
        null, false, 'Camouflage',
        'day', 'spring', 1, 7, 73, 0.59);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 73);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 73);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Sea Green',
        'boiling hot water',
        'Nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Scauldron', 6,
        'training a Scauldron is incredibly difficult and close to impossible due to their aggressive nature. If you want to train a Scauldron, the best way to start is simply to cover yourself in water or anything that smells like fish.',
        true, 'Venom',
        'night', 'winter', 2, 13, 74, 0.86);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (16, 74);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Sea blue and black',
        'Electric stun charges',
        'Two heads');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Seashocker', 6,
        'You can train a Seashocker if you heal its injuries or get back to its pond.',
        true, 'Cutting ice with its dorsal blades',
        'day', 'spring', 7, 11, 75, 0.75);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 75);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Red with orange',
        'Cannonball-sized plasma charges',
        'Long but relatively small wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Shellfire', 6,
        'It is currently unknown whether or not Shellfires can be trained, as Viggo''s Shellfire, the only known individual, was so agitated that, after being captured and forced to battle a Submaripper and Dragon Riders by the Dragon Hunters, it immediately retreated to the ocean''s depths, and has not been spotted since.',
        true, 'Expelling red algae from gills',
        'day', 'autumn', 2, 7, 76, 0.59);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 76);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 76);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (20, 76);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (13, 76);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'green',
        'Bio-electricity',
        'Tendrils on the chin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Shockjaw', 6,
        null, false, 'Electrokinesis',
        'night', 'winter', 3, 13, 77, 0.56);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 77);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 77);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Sea green',
        'Streams of acid',
        'Fin-like wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sliquifier', 6,
        null, false, 'Supersonic swimming speed',
        'day', 'summer', 4, 11, 78, 0.24);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 78);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Blue with yellow stripes',
        'Whirlpool',
        'Webbed feet');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Ancient submaripper', 6,
        'While it is unknown if a Submaripper can be fully trained, it can be tamed to a certain extent. If one helps or saves a Submaripper, the dragon will stop being aggressive and will even return the favour. The Submaripper''s undying loyalty will have been earned.',
        true, 'Gas bubbles',
        'day', 'spring', 2, 8, 79, 0.73);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 79);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (5, 79);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 79);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 79);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (8, 79);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Mainly blue',
        'Fire balls',
        'Expandable mouth');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Thunderdrum', 6,
        'Training a Thunderdrum, especially as an adult is a challenge partly due to their difficult personality and deafness. Showing protection and gaining the Thunderdrum`s trust is an easier way to train it, as seen by Stoick and Thornado.',
        true, 'Expelling air from body to swim',
        'night', 'winter', 2, 17, 80, 0.84);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 80);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 80);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 80);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 80);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Cyan',
        'Acid blasts',
        'Large fan-like tail fin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Tide Glider', 6,
        null, false, 'Healing saliva',
        'day', 'spring', 7, 23, 81, 0.13);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 81);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'red',
        'Balls of fire',
        'Long neck');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Windwalker', 6,
        null, false, 'Electrokinesis',
        'day', 'autumn', 2, 6, 82, 0.46);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (12, 82);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (25, 82);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 82);

-- Tracker Class species

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Light Orange',
        'Massive balls of fire',
        'Large fan-like tail fin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Moldruffle', 7,
        'To train a Deadly Nadder, one must very carefully approach the dragon from its tail. Then, you must gently smooth its spikes down. In addition, one can also train a Nadder by sneaking up on its blind spot, then scratching its chin affectionately.',
        true, 'Sharp long ranged vision',
        'night', 'summer', 5, 9, 83, 0.67);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 83);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 83);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (22, 83);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 83);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Variety of colors',
        'Magnesium fire',
        'Nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Deadly Nadder', 7,
        'To train a Deadly Nadder, one must very carefully approach the dragon from its tail. Then, you must gently smooth its spikes down. In addition, one can also train a Nadder by sneaking up on its blind spot, then scratching its chin affectionately.',
        true, 'Spine shot',
        'day', 'summer', 2, 9, 84, 0.73);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 84);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 84);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (25, 84);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Turquoise Green',
        'Sonic blasts',
        'Sail on back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Mudraker', 7,
        null, false, 'Sonic blasts that travel through the water at intense speeds',
        'night', 'spring', 2, 12, 85, 0.84);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 85);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 85);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 85);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 85);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (13, 85);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Green with brown trim',
        'Flaming rock "missiles"',
        'Jackhammer-like maw');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Rumblehorn', 7,
        'Rumblehorns always have their snouts to the ground, sniffing around for something edible. They can be aggressive, but they are friendly towards their riders. Their food of choice is unknown, but it is known that they are carnivorous. They are also highly intelligent and determined. They run like rhinoceroses.',
        true, 'Tracking',
        'day', 'winter', 5, 12, 86, 0.62);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 86);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 86);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 86);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 86);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Different colored patterns',
        'Fire-sneeze that can melt nearly anything',
        'Colorful exterior');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Snifflehunch', 7,
        'Snifflehunches are relatively easy to train, as they are calm and friendly dragons. If a person saves a Snifflehunch''s life, the dragon will be forever thankful and will stay close to its savior',
        true, 'Sniffing out friends and foes',
        'day', 'spring', 2, 8, 87, 0.74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 87);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (8, 87);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (14, 87);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 87);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Blue with yellow stripes',
        'Whirlpool',
        'Webbed feet');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Submaripper horror', 7,
        'While it is unknown if a Submaripper can be fully trained, it can be tamed to a certain extent. If one helps or saves a Submaripper, the dragon will stop being aggressive and will even return the favour. The Submaripper''s undying loyalty will have been earned.',
        true, 'Creating whirlpools and tidal waves',
        'night', 'winter', 2, 6, 88, 0.35);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 88);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (16, 88);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Wide variety of colors',
        'Green/orange fire',
        'Sail on back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Thunderclaw', 7,
        'Thunderclaws are relatively easy to train, as they are mostly peaceful dragons. If a person saves a Thunderclaw''s life, the dragon will be forever thankful and will stay close to its savior',
        true, 'Tracking',
        'night', 'autumn', 3, 11, 89, 0.82);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 89);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 89);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 89);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'green',
        'Green or Orange Fireballs',
        'Bumps all over body');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Windgnasher', 7,
        'Windgnashers are relatively easy to train, as they are calm and friendly dragons. If a person saves a Windgnasher''s life, the dragon will be forever thankful and will stay close to its savior',
        true, 'Tracking',
        'night', 'summer', 4, 13, 90, 0.17);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 90);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (25, 90);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (21, 90);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 90);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 90);

INSERT INTO cages (max_amount, cage_type)
VALUES (8, 'general'),
       (4, 'general'),
       (19, 'general'),
       (13, 'general'),
       (6, 'general'),
       (7, 'general'),
       (3, 'general'),
       (6, 'general'),
       (14, 'general'),
       (10, 'general'),
       (13, 'general'),
       (5, 'general'),
       (3, 'general'),
       (3, 'general'),
       (7, 'general'),
       (10, 'general'),
       (7, 'general'),
       (6, 'general'),
       (13, 'general'),
       (13, 'general'),
       (12, 'general'),
       (10, 'general'),
       (15, 'general'),
       (4, 'general'),
       (9, 'general'),
       (10, 'general'),
       (14, 'general'),
       (7, 'general'),
       (14, 'general'),
       (5, 'general'),
       (5, 'general'),
       (16, 'general'),
       (11, 'general'),
       (13, 'general'),
       (12, 'general'),
       (17, 'general'),
       (4, 'general'),
       (17, 'general'),
       (10, 'general'),
       (19, 'general'),
       (5, 'general'),
       (19, 'general'),
       (6, 'general'),
       (8, 'general'),
       (7, 'general'),
       (16, 'general'),
       (16, 'general'),
       (7, 'general'),
       (17, 'general'),
       (17, 'general'),
       (14, 'general'),
       (15, 'general'),
       (10, 'general'),
       (7, 'general'),
       (13, 'general'),
       (8, 'general'),
       (7, 'general'),
       (7, 'general'),
       (8, 'general'),
       (8, 'general'),
       (15, 'incubator'),
       (4, 'incubator'),
       (18, 'incubator'),
       (18, 'incubator'),
       (16, 'incubator'),
       (13, 'incubator'),
       (19, 'incubator'),
       (11, 'incubator'),
       (12, 'incubator'),
       (7, 'incubator'),
       (18, 'incubator'),
       (19, 'incubator'),
       (4, 'incubator'),
       (6, 'incubator'),
       (18, 'incubator'),
       (18, 'nursery'),
       (6, 'nursery'),
       (11, 'nursery'),
       (21, 'nursery'),
       (9, 'nursery'),
       (17, 'nursery'),
       (20, 'nursery'),
       (3, 'nursery'),
       (18, 'nursery'),
       (10, 'nursery'),
       (11, 'nursery'),
       (13, 'nursery'),
       (3, 'nursery'),
       (16, 'nursery'),
       (17, 'nursery'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple'),
       (2, 'couple');

INSERT INTO dragons (name, train_level_id, type_id, gender, cage_id, dragon_status, date_of_death, date_of_birth)
VALUES
    --wild dragons without characteristics
    ('Liam', 4, 5, 'male', 1, 'alive', null, '1977-09-06'),
    ('Noah', 4, 6, 'male', 1, 'alive', null, '2000-09-06'),
    ('Oliver', 4, 7, 'male', 1, 'alive', null, '1977-09-06'),
    ('Elijah', 4, 8, 'male', 1, 'alive', null, '1977-09-06'),
    ('William', 4, 9, 'male', 1, 'alive', null, '1977-09-06'),
    ('James', 4, 10, 'male', 1, 'alive', null, '1977-09-06'),
    ('Benjamin', 4, 11, 'male', 1, 'alive', null, '1977-09-06'),
    ('Lucas', 4, 12, 'male', 1, 'alive', null, '1977-09-06'),
    ('Henry', 4, 13, 'male', 2, 'alive', null, '1977-09-06'),
    ('Alexander', 4, 16, 'male', 2, 'alive', null, '1977-09-06'),
    ('Mason', 4, 17, 'male', 2, 'alive', null, '1977-09-06'),
    ('Michael', 4, 18, 'male', 2, 'alive', null, '1977-09-06'),
    ('Ethan', 4, 19, 'female', 3, 'alive', null, '1977-09-06'),
    ('Daniel', 4, 21, 'female', 3, 'alive', null, '1977-09-06'),
    ('Jacob', 4, 22, 'female', 3, 'alive', null, '1977-09-06'),
    ('Logan', 4, 25, 'female', 3, 'alive', null, '1977-09-06'),
    ('Jackson', 4, 26, 'female', 3, 'alive', null, '1977-09-06'),
    ('Levi', 4, 27, 'female', 3, 'alive', null, '1977-09-06'),
    ('Sebastian', 4, 28, 'female', 3, 'alive', null, '1977-09-06'),
    ('Mateo', 4, 31, 'female', 3, 'alive', null, '1977-09-06'),
    ('Jack', 4, 35, 'female', 3, 'alive', null, '1977-09-06'),
    ('Owen', 4, 36, 'female', 3, 'alive', null, '1977-09-06'),
    ('Theodore', 4, 37, 'female', 3, 'alive', null, '1977-09-06'),
    ('Aiden', 4, 39, 'female', 3, 'alive', null, '1977-09-06'),
    ('Samuel', 4, 40, 'female', 3, 'alive', null, '1977-09-06'),
    ('Joseph', 4, 48, 'female', 3, 'alive', null, '1977-09-06'),
    ('John', 4, 50, 'female', 3, 'alive', null, '1977-09-06'),
    ('David', 4, 51, 'female', 3, 'alive', null, '1977-09-06'),
    ('Wyatt', 4, 56, 'female', 3, 'alive', null, '1977-09-06'),
    ('Matthew', 4, 58, 'female', 3, 'alive', null, '1977-09-06'),
    ('Luke', 4, 59, 'female', 3, 'alive', null, '1977-09-06'),
    --elementary dragons
    ('Asher', 5, 5, 'male', 4, 'alive', null, '1977-09-06'),
    ('Carter', 5, 6, 'male', 4, 'alive', null, '1977-09-06'),
    ('Julian', 5, 7, 'male', 4, 'alive', null, '1977-09-06'),
    ('Grayson', 5, 8, 'male', 4, 'alive', null, '1977-09-06'),
    ('Leo', 5, 9, 'male', 4, 'alive', null, '1977-09-06'),
    ('Jayden', 5, 10, 'male', 4, 'alive', null, '1977-09-06'),
    ('Gabriel', 5, 11, 'male', 4, 'alive', null, '1977-09-06'),
    ('Isaac', 5, 12, 'male', 4, 'alive', null, '1977-09-06'),
    ('Lincoln', 5, 13, 'male', 4, 'alive', null, '1977-09-06'),
    ('Anthony', 5, 16, 'male', 4, 'alive', null, '1977-09-06'),
    ('Hudson', 5, 17, 'male', 4, 'alive', null, '1977-09-06'),
    ('Dylan', 5, 18, 'male', 4, 'alive', null, '1977-09-06'),
    ('Ezra', 5, 19, 'male', 4, 'alive', null, '1977-09-06'),
    ('Thomas', 5, 21, 'female', 5, 'alive', null, '1977-09-06'),
    ('Charles', 5, 22, 'female', 5, 'alive', null, '1977-09-06'),
    ('Christopher', 5, 25, 'female', 5, 'alive', null, '1977-09-06'),
    ('Jaxon', 5, 26, 'female', 5, 'alive', null, '1977-09-06'),
    ('Maverick', 5, 27, 'female', 5, 'alive', null, '1977-09-06'),
    ('Josiah', 5, 28, 'female', 5, 'alive', null, '1977-09-06'),
    ('Andrew', 5, 35, 'male', 6, 'alive', null, '1977-09-06'),
    ('Elias', 5, 36, 'male', 6, 'alive', null, '1977-09-06'),
    ('Joshua', 5, 37, 'male', 6, 'alive', null, '1977-09-06'),
    ('Nathan', 5, 39, 'male', 6, 'alive', null, '1977-09-06'),
    ('Caleb', 5, 40, 'male', 6, 'alive', null, '1977-09-06'),
    ('Ryan', 5, 48, 'male', 6, 'alive', null, '1977-09-06'),
    ('Adrian', 5, 50, 'male', 7, 'alive', null, '1977-09-06'),
    ('Miles', 5, 51, 'male', 7, 'alive', null, '1977-09-06'),
    ('Eli', 5, 56, 'male', 7, 'alive', null, '1977-09-06'),
    ('Nolan', 5, 58, 'male', 8, 'alive', null, '1977-09-06'),
    ('Christian', 5, 59, 'male', 8, 'alive', null, '1977-09-06'),
    ('Aaron', 5, 60, 'male', 8, 'alive', null, '1977-09-06'),
    ('Cameron', 5, 61, 'male', 8, 'alive', null, '1977-09-06'),
    ('Ezekiel', 5, 62, 'male', 8, 'alive', null, '1977-09-06'),
    ('Colton', 5, 63, 'male', 8, 'alive', null, '1977-09-06'),
    ('Luca', 5, 66, 'female', 9, 'alive', null, '1977-09-06'),
    ('Landon', 5, 70, 'female', 9, 'alive', null, '1977-09-06'),
    ('Hunter', 5, 74, 'female', 9, 'alive', null, '1977-09-06'),
    ('Jonathan', 5, 75, 'female', 9, 'alive', null, '1977-09-06'),
    ('Santiago', 5, 76, 'female', 9, 'alive', null, '1977-09-06'),
    ('Axel', 5, 79, 'female', 9, 'alive', null, '1977-09-06'),
    ('Easton', 5, 80, 'female', 9, 'alive', null, '1977-09-06'),
    ('Cooper', 5, 83, 'female', 9, 'alive', null, '1977-09-06'),
    ('Jeremiah', 5, 84, 'female', 9, 'alive', null, '1977-09-06'),
    ('Angel', 5, 86, 'female', 9, 'alive', null, '1977-09-06'),
    ('Roman', 5, 87, 'female', 9, 'alive', null, '1977-09-06'),
    ('Connor', 5, 88, 'female', 9, 'alive', null, '1977-09-06'),
    ('Jameson', 5, 89, 'female', 9, 'alive', null, '1977-09-06'),
    ('Robert', 5, 90, 'female', 9, 'alive', null, '1977-09-06'),
    ('Greyson', 5, 5, 'female', 10, 'alive', null, '1977-09-06'),
    ('Jordan', 5, 6, 'female', 10, 'alive', null, '1977-09-06'),
    ('Ian', 5, 7, 'female', 10, 'alive', null, '1977-09-06'),
    ('Carson', 5, 8, 'female', 10, 'alive', null, '1977-09-06'),
    ('Jaxson', 5, 9, 'female', 10, 'alive', null, '1977-09-06'),
    ('Leonardo', 5, 10, 'female', 10, 'alive', null, '1977-09-06'),
    ('Nicholas', 5, 11, 'female', 10, 'alive', null, '1977-09-06'),
    ('Dominic', 5, 12, 'female', 10, 'alive', null, '1977-09-06'),
    ('Austin', 5, 13, 'female', 10, 'alive', null, '1977-09-06'),
    ('Everett', 5, 16, 'female', 10, 'alive', null, '1977-09-06'),
    ('Brooks', 5, 17, 'female', 11, 'alive', null, '1977-09-06'),
    ('Xavier', 5, 18, 'female', 11, 'alive', null, '1977-09-06'),
    ('Kai', 5, 19, 'female', 11, 'alive', null, '1977-09-06'),
    ('Jose', 5, 21, 'female', 11, 'alive', null, '1977-09-06'),
    ('Parker', 5, 22, 'female', 11, 'alive', null, '1977-09-06'),
    ('Adam', 5, 25, 'female', 11, 'alive', null, '1977-09-06'),
    ('Jace', 5, 26, 'female', 11, 'alive', null, '1977-09-06'),
    ('Wesley', 5, 27, 'female', 11, 'alive', null, '1977-09-06'),
    ('Kayden', 5, 28, 'female', 11, 'alive', null, '1977-09-06'),
    ('Silas', 5, 31, 'female', 11, 'alive', null, '1977-09-06'),
    ('Bennett', 5, 35, 'female', 11, 'alive', null, '1977-09-06'),
    ('Declan', 5, 36, 'male', 12, 'alive', null, '1977-09-06'),
    ('Waylon', 5, 37, 'male', 12, 'alive', null, '1977-09-06'),
    ('Weston', 5, 39, 'male', 12, 'alive', null, '1977-09-06'),
    ('Evan', 5, 40, 'male', 12, 'alive', null, '1977-09-06'),
    ('Emmett', 5, 48, 'male', 12, 'alive', null, '1977-09-06'),
    ('Micah', 5, 50, 'male', 13, 'alive', null, '1977-09-06'),
    ('Ryder', 5, 51, 'male', 13, 'alive', null, '1977-09-06'),
    ('Beau', 5, 56, 'male', 13, 'alive', null, '1977-09-06'),
    ('Damian', 5, 58, 'male', 14, 'alive', null, '1977-09-06'),
    ('Brayden', 5, 59, 'male', 14, 'alive', null, '1977-09-06'),
    ('Gael', 5, 60, 'male', 14, 'alive', null, '1977-09-06'),
    ('Rowan', 5, 61, 'female', 15, 'alive', null, '1977-09-06'),
    ('Harrison', 5, 62, 'female', 15, 'alive', null, '1977-09-06'),
    ('Bryson', 5, 63, 'female', 15, 'alive', null, '1977-09-06'),
    ('Sawyer', 5, 66, 'female', 15, 'alive', null, '1977-09-06'),
    ('Amir', 5, 70, 'female', 15, 'alive', null, '1977-09-06'),
    ('Kingston', 5, 74, 'female', 15, 'alive', null, '1977-09-06'),
    ('Jason', 5, 75, 'female', 15, 'alive', null, '1977-09-06'),
    ('Giovanni', 5, 76, 'male', 16, 'alive', null, '1977-09-06'),
    ('Vincent', 5, 79, 'male', 16, 'alive', null, '1977-09-06'),
    ('Ayden', 5, 80, 'male', 16, 'alive', null, '1977-09-06'),
    ('Chase', 5, 83, 'male', 16, 'alive', null, '1977-09-06'),
    ('Myles', 5, 84, 'male', 16, 'alive', null, '1977-09-06'),
    ('Diego', 5, 86, 'male', 16, 'alive', null, '1977-09-06'),
    ('Nathaniel', 5, 87, 'male', 16, 'alive', null, '1977-09-06'),
    ('Legend', 5, 88, 'male', 16, 'alive', null, '1977-09-06'),
    ('Jonah', 5, 89, 'male', 16, 'alive', null, '1977-09-06'),
    ('River', 5, 90, 'male', 16, 'alive', null, '1977-09-06'),
    ('Tyler', 5, 5, 'male', 17, 'alive', null, '1977-09-06'),
    ('Cole', 5, 6, 'male', 17, 'alive', null, '1999-09-06'),
    ('Braxton', 5, 7, 'male', 17, 'alive', null, '1977-09-06'),
    ('George', 5, 8, 'male', 17, 'alive', null, '1977-09-06'),
    ('Milo', 5, 9, 'male', 17, 'alive', null, '1977-09-06'),
    ('Zachary', 5, 10, 'male', 17, 'alive', null, '1977-09-06'),
    ('Ashton', 5, 11, 'male', 17, 'alive', null, '1977-09-06'),
    ('Luis', 5, 12, 'female', 18, 'alive', null, '1977-09-06'),
    ('Jasper', 5, 13, 'female', 18, 'alive', null, '1977-09-06'),
    ('Kaiden', 5, 16, 'female', 18, 'alive', null, '1977-09-06'),
    ('Adriel', 5, 17, 'female', 18, 'alive', null, '1977-09-06'),
    ('Gavin', 5, 18, 'female', 18, 'alive', null, '1977-09-06'),
    ('Bentley', 5, 19, 'female', 18, 'alive', null, '1977-09-06'),
    -- intermediate dragons
    ('Calvin', 6, 21, 'female', 19, 'alive', null, '1977-09-06'),
    ('Zion', 6, 22, 'female', 19, 'alive', null, '1977-09-06'),
    ('Juan', 6, 25, 'female', 19, 'alive', null, '1977-09-06'),
    ('Maxwell', 6, 26, 'female', 19, 'alive', null, '1977-09-06'),
    ('Max', 6, 27, 'female', 19, 'alive', null, '1977-09-06'),
    ('Ryker', 6, 28, 'female', 19, 'alive', null, '1977-09-06'),
    ('Carlos', 6, 31, 'female', 19, 'alive', null, '1977-09-06'),
    ('Emmanuel', 6, 35, 'female', 19, 'alive', null, '1977-09-06'),
    ('Jayce', 6, 36, 'female', 19, 'alive', null, '1977-09-06'),
    ('Lorenzo', 6, 37, 'female', 19, 'alive', null, '1977-09-06'),
    ('Ivan', 6, 39, 'female', 19, 'alive', null, '1977-09-06'),
    ('Jude', 6, 40, 'female', 19, 'alive', null, '1977-09-06'),
    ('August', 6, 48, 'female', 19, 'alive', null, '1977-09-06'),
    ('Kevin', 6, 50, 'male', 20, 'alive', null, '1977-09-06'),
    ('Malachi', 6, 51, 'male', 20, 'alive', null, '1977-09-06'),
    ('Elliott', 6, 56, 'male', 20, 'alive', null, '1977-09-06'),
    ('Rhett', 6, 58, 'male', 20, 'alive', null, '1977-09-06'),
    ('Archer', 6, 59, 'male', 20, 'alive', null, '1977-09-06'),
    ('Karter', 6, 60, 'male', 20, 'alive', null, '1977-09-06'),
    ('Arthur', 6, 61, 'male', 20, 'alive', null, '1977-09-06'),
    ('Luka', 6, 62, 'male', 20, 'alive', null, '1977-09-06'),
    ('Elliot', 6, 63, 'male', 20, 'alive', null, '1977-09-06'),
    ('Thiago', 6, 66, 'male', 20, 'alive', null, '1977-09-06'),
    ('Brandon', 6, 70, 'male', 20, 'alive', null, '1977-09-06'),
    ('Camden', 6, 74, 'male', 20, 'alive', null, '1977-09-06'),
    ('Justin', 6, 75, 'male', 20, 'alive', null, '1977-09-06'),
    ('Jesus', 6, 5, 'female', 21, 'alive', null, '1977-09-06'),
    ('Maddox', 6, 6, 'female', 21, 'alive', null, '1977-09-06'),
    ('King', 6, 7, 'female', 21, 'alive', null, '1977-09-06'),
    ('Theo', 6, 8, 'female', 21, 'alive', null, '1977-09-06'),
    ('Enzo', 6, 9, 'female', 21, 'alive', null, '1977-09-06'),
    ('Matteo', 6, 10, 'female', 21, 'alive', null, '1977-09-06'),
    ('Emiliano', 6, 11, 'female', 21, 'alive', null, '1977-09-06'),
    ('Dean', 6, 12, 'female', 21, 'alive', null, '1977-09-06'),
    ('Hayden', 6, 13, 'female', 21, 'alive', null, '1977-09-06'),
    ('Finn', 6, 16, 'female', 21, 'alive', null, '1977-09-06'),
    ('Brody', 6, 17, 'female', 21, 'alive', null, '1977-09-06'),
    ('Antonio', 6, 18, 'female', 21, 'alive', null, '1977-09-06'),
    ('Abel', 6, 19, 'female', 22, 'alive', null, '1977-09-06'),
    ('Alex', 6, 21, 'female', 22, 'alive', null, '1977-09-06'),
    ('Tristan', 6, 22, 'female', 22, 'alive', null, '1977-09-06'),
    ('Graham', 6, 25, 'female', 22, 'alive', null, '1977-09-06'),
    ('Zayden', 6, 26, 'female', 22, 'alive', null, '1977-09-06'),
    ('Judah', 6, 27, 'female', 22, 'alive', null, '1977-09-06'),
    ('Xander', 6, 28, 'female', 22, 'alive', null, '1977-09-06'),
    ('Miguel', 6, 31, 'female', 22, 'alive', null, '1977-09-06'),
    ('Atlas', 6, 35, 'female', 22, 'alive', null, '1977-09-06'),
    ('Messiah', 6, 36, 'female', 22, 'alive', null, '1977-09-06'),
    ('Barrett', 6, 37, 'female', 23, 'alive', null, '1977-09-06'),
    ('Tucker', 6, 39, 'female', 23, 'alive', null, '1977-09-06'),
    ('Timothy', 6, 40, 'female', 23, 'alive', null, '1977-09-06'),
    ('Alan', 6, 48, 'female', 23, 'alive', null, '1977-09-06'),
    ('Edward', 6, 50, 'female', 23, 'alive', null, '1977-09-06'),
    ('Leon', 6, 51, 'female', 23, 'alive', null, '1977-09-06'),
    ('Dawson', 6, 56, 'female', 23, 'alive', null, '1977-09-06'),
    ('Eric', 6, 58, 'female', 23, 'alive', null, '1977-09-06'),
    ('Ace', 6, 59, 'female', 23, 'alive', null, '1977-09-06'),
    ('Victor', 6, 60, 'female', 23, 'alive', null, '1977-09-06'),
    ('Abraham', 6, 61, 'female', 23, 'alive', null, '1977-09-06'),
    ('Nicolas', 6, 62, 'female', 23, 'alive', null, '1977-09-06'),
    ('Jesse', 6, 63, 'female', 23, 'alive', null, '1977-09-06'),
    ('Charlie', 6, 66, 'female', 23, 'alive', null, '1977-09-06'),
    ('Patrick', 6, 70, 'female', 23, 'alive', null, '1977-09-06'),
    ('Walker', 6, 74, 'male', 24, 'alive', null, '1977-09-06'),
    ('Joel', 6, 75, 'male', 24, 'alive', null, '1977-09-06'),
    ('Richard', 6, 76, 'male', 24, 'alive', null, '1977-09-06'),
    ('Beckett', 6, 79, 'male', 24, 'alive', null, '1977-09-06'),
    ('Blake', 6, 5, 'male', 25, 'alive', null, '1977-09-06'),
    ('Alejandro', 6, 6, 'male', 25, 'alive', null, '1977-09-06'),
    ('Avery', 6, 7, 'male', 25, 'alive', null, '1977-09-06'),
    ('Grant', 6, 8, 'male', 25, 'alive', null, '1977-09-06'),
    ('Peter', 6, 9, 'male', 25, 'alive', null, '1977-09-06'),
    ('Oscar', 6, 10, 'male', 25, 'alive', null, '1977-09-06'),
    ('Matias', 6, 11, 'male', 25, 'alive', null, '1977-09-06'),
    ('Amari', 6, 12, 'male', 25, 'alive', null, '1977-09-06'),
    ('Lukas', 6, 13, 'male', 25, 'alive', null, '1977-09-06'),
    ('Andres', 6, 16, 'male', 26, 'alive', null, '1977-09-06'),
    ('Arlo', 6, 17, 'male', 26, 'alive', null, '1977-09-06'),
    ('Colt', 6, 18, 'male', 26, 'alive', null, '1977-09-06'),
    ('Adonis', 6, 19, 'male', 26, 'alive', null, '1977-09-06'),
    ('Kyrie', 6, 21, 'male', 26, 'alive', null, '1977-09-06'),
    ('Steven', 6, 22, 'male', 26, 'alive', null, '1977-09-06'),
    ('Felix', 6, 25, 'male', 26, 'alive', null, '1977-09-06'),
    ('Preston', 6, 26, 'male', 26, 'alive', null, '1977-09-06'),
    ('Marcus', 6, 27, 'male', 26, 'alive', null, '1977-09-06'),
    ('Holden', 6, 28, 'male', 26, 'alive', null, '1977-09-06'),
    ('Emilio', 6, 31, 'female', 27, 'alive', null, '1977-09-06'),
    ('Remington', 6, 35, 'female', 27, 'alive', null, '1977-09-06'),
    ('Jeremy', 6, 36, 'female', 27, 'alive', null, '1977-09-06'),
    ('Kaleb', 6, 37, 'female', 27, 'alive', null, '1977-09-06'),
    ('Brantley', 6, 39, 'female', 27, 'alive', null, '1977-09-06'),
    ('Bryce', 6, 40, 'female', 27, 'alive', null, '1977-09-06'),
    ('Mark', 6, 48, 'female', 27, 'alive', null, '1977-09-06'),
    ('Knox', 6, 50, 'female', 27, 'alive', null, '1977-09-06'),
    ('Israel', 6, 51, 'female', 27, 'alive', null, '1977-09-06'),
    ('Phoenix', 6, 56, 'female', 27, 'alive', null, '1977-09-06'),
    ('Kobe', 6, 58, 'female', 27, 'alive', null, '1977-09-06'),
    ('Nash', 6, 59, 'female', 27, 'alive', null, '1977-09-06'),
    ('Griffin', 6, 60, 'female', 27, 'alive', null, '1977-09-06'),
    ('Caden', 6, 61, 'female', 27, 'alive', null, '1977-09-06'),
    ('Kenneth', 6, 62, 'female', 28, 'alive', null, '1977-09-06'),
    ('Kyler', 6, 63, 'female', 28, 'alive', null, '1977-09-06'),
    ('Hayes', 6, 66, 'female', 28, 'alive', null, '1977-09-06'),
    ('Jax', 6, 70, 'female', 28, 'alive', null, '1977-09-06'),
    ('Rafael', 6, 74, 'female', 28, 'alive', null, '1977-09-06'),
    ('Beckham', 6, 75, 'female', 28, 'alive', null, '1977-09-06'),
    ('Javier', 6, 76, 'female', 28, 'alive', null, '1977-09-06'),
    ('Maximus', 6, 59, 'male', 29, 'alive', null, '1977-09-06'),
    ('Simon', 6, 60, 'male', 29, 'alive', null, '1977-09-06'),
    ('Paul', 6, 61, 'male', 29, 'alive', null, '1977-09-06'),
    ('Omar', 6, 62, 'male', 29, 'alive', null, '1977-09-06'),
    ('Kaden', 6, 63, 'male', 29, 'alive', null, '1977-09-06'),
    ('Kash', 6, 66, 'male', 29, 'alive', null, '1977-09-06'),
    ('Lane', 6, 70, 'male', 29, 'alive', null, '1977-09-06'),
    ('Bryan', 6, 74, 'male', 29, 'alive', null, '1977-09-06'),
    ('Riley', 6, 75, 'male', 29, 'alive', null, '1977-09-06'),
    ('Zane', 6, 76, 'male', 29, 'alive', null, '1977-09-06'),
    ('Louis', 6, 79, 'male', 29, 'alive', null, '1977-09-06'),
    ('Aidan', 6, 80, 'male', 29, 'alive', null, '1977-09-06'),
    ('Paxton', 6, 83, 'male', 29, 'alive', null, '1977-09-06'),
    ('Maximiliano', 6, 84, 'male', 29, 'alive', null, '1977-09-06'),
    ('Karson', 6, 86, 'male', 30, 'alive', null, '1977-09-06'),
    ('Cash', 6, 87, 'male', 30, 'alive', null, '1977-09-06'),
    ('Cayden', 6, 88, 'male', 30, 'alive', null, '1977-09-06'),
    ('Emerson', 6, 89, 'male', 30, 'alive', null, '1977-09-06'),
    ('Tobias', 6, 90, 'male', 30, 'alive', null, '1977-09-06'),
    ('Ronan', 6, 5, 'male', 31, 'alive', null, '2000-09-06'),
    ('Brian', 6, 6, 'male', 31, 'alive', null, '1977-09-06'),
    ('Dallas', 6, 7, 'male', 31, 'alive', null, '1977-09-06'),
    ('Bradley', 6, 8, 'male', 31, 'alive', null, '1977-09-06'),
    ('Jorge', 6, 9, 'male', 31, 'alive', null, '1977-09-06'),
    ('Walter', 6, 10, 'female', 32, 'alive', null, '1977-09-06'),
    ('Josue', 6, 11, 'female', 32, 'alive', null, '1977-09-06'),
    ('Khalil', 6, 12, 'female', 32, 'alive', null, '1977-09-06'),
    ('Damien', 6, 13, 'female', 32, 'alive', null, '1977-09-06'),
    ('Jett', 6, 16, 'female', 32, 'alive', null, '1977-09-06'),
    ('Kairo', 6, 17, 'female', 32, 'alive', null, '1977-09-06'),
    ('Zander', 6, 18, 'female', 32, 'alive', null, '1977-09-06'),
    ('Andre', 6, 19, 'female', 32, 'alive', null, '1977-09-06'),
    ('Cohen', 6, 21, 'female', 32, 'alive', null, '1977-09-06'),
    ('Crew', 6, 22, 'female', 32, 'alive', null, '1977-09-06'),
    ('Hendrix', 6, 25, 'female', 32, 'alive', null, '1977-09-06'),
    ('Colin', 6, 26, 'female', 32, 'alive', null, '1977-09-06'),
    ('Chance', 6, 27, 'female', 32, 'alive', null, '1977-09-06'),
    ('Malakai', 6, 28, 'female', 32, 'alive', null, '1977-09-06'),
    ('Clayton', 6, 31, 'female', 32, 'alive', null, '1977-09-06'),
    ('Daxton', 6, 35, 'female', 32, 'alive', null, '1977-09-06'),
    ('Malcolm', 6, 59, 'male', 33, 'alive', null, '1977-09-06'),
    ('Lennox', 6, 60, 'male', 33, 'alive', null, '1977-09-06'),
    ('Martin', 6, 61, 'male', 33, 'alive', null, '1977-09-06'),
    ('Jaden', 6, 62, 'male', 33, 'alive', null, '1977-09-06'),
    ('Kayson', 6, 63, 'male', 33, 'alive', null, '1977-09-06'),
    ('Bodhi', 6, 66, 'male', 33, 'alive', null, '1977-09-06'),
    ('Francisco', 6, 70, 'male', 33, 'alive', null, '1977-09-06'),
    ('Cody', 6, 74, 'male', 33, 'alive', null, '1977-09-06'),
    ('Erick', 6, 75, 'male', 33, 'alive', null, '1977-09-06'),
    ('Kameron', 6, 76, 'male', 33, 'alive', null, '1977-09-06'),
    ('Atticus', 6, 79, 'male', 33, 'alive', null, '1977-09-06'),
    ('Dante', 6, 80, 'male', 34, 'alive', null, '1977-09-06'),
    ('Jensen', 6, 83, 'male', 34, 'alive', null, '1977-09-06'),
    ('Cruz', 6, 84, 'male', 34, 'alive', null, '1977-09-06'),
    ('Finley', 6, 86, 'male', 34, 'alive', null, '1977-09-06'),
    ('Brady', 6, 87, 'male', 34, 'alive', null, '1977-09-06'),
    ('Joaquin', 6, 88, 'male', 34, 'alive', null, '1977-09-06'),
    ('Anderson', 6, 89, 'male', 34, 'alive', null, '1977-09-06'),
    ('Gunner', 6, 90, 'male', 34, 'alive', null, '1977-09-06'),
    ('Muhammad', 6, 5, 'male', 34, 'alive', null, '1977-09-06'),
    ('Zayn', 6, 6, 'male', 34, 'alive', null, '2011-09-06'),
    ('Derek', 6, 7, 'male', 34, 'alive', null, '1977-09-06'),
    ('Raymond', 6, 8, 'male', 34, 'alive', null, '1977-09-06'),
    ('Kyle', 6, 9, 'male', 34, 'alive', null, '1977-09-06'),
    ('Angelo', 6, 10, 'male', 35, 'alive', null, '1977-09-06'),
    ('Reid', 6, 11, 'male', 35, 'alive', null, '1977-09-06'),
    ('Spencer', 6, 12, 'male', 35, 'alive', null, '1977-09-06'),
    ('Nico', 6, 13, 'male', 35, 'alive', null, '1977-09-06'),
    ('Jaylen', 6, 16, 'male', 35, 'alive', null, '1977-09-06'),
    ('Jake', 6, 17, 'male', 35, 'alive', null, '1977-09-06'),
    ('Prince', 6, 18, 'male', 35, 'alive', null, '1977-09-06'),
    ('Manuel', 6, 19, 'male', 35, 'alive', null, '1977-09-06'),
    ('Ali', 6, 21, 'male', 35, 'alive', null, '1977-09-06'),
    ('Gideon', 6, 22, 'male', 35, 'alive', null, '1977-09-06'),
    ('Stephen', 6, 25, 'male', 35, 'alive', null, '1977-09-06'),
    ('Ellis', 6, 26, 'male', 35, 'alive', null, '1977-09-06'),
    ('Orion', 6, 59, 'female', 36, 'alive', null, '1977-09-06'),
    ('Rylan', 6, 60, 'female', 36, 'alive', null, '1977-09-06'),
    ('Eduardo', 6, 61, 'female', 36, 'alive', null, '1977-09-06'),
    ('Mario', 6, 62, 'female', 36, 'alive', null, '1977-09-06'),
    ('Rory', 6, 63, 'female', 36, 'alive', null, '1977-09-06'),
    ('Cristian', 6, 66, 'female', 36, 'alive', null, '1977-09-06'),
    ('Odin', 6, 70, 'female', 36, 'alive', null, '1977-09-06'),
    ('Tanner', 6, 74, 'female', 36, 'alive', null, '1977-09-06'),
    ('Julius', 6, 75, 'female', 36, 'alive', null, '1977-09-06'),
    ('Callum', 6, 76, 'female', 36, 'alive', null, '1977-09-06'),
    ('Sean', 6, 79, 'female', 36, 'alive', null, '1977-09-06'),
    ('Kane', 6, 80, 'female', 36, 'alive', null, '1977-09-06'),
    ('Ricardo', 6, 83, 'female', 36, 'alive', null, '1977-09-06'),
    ('Travis', 6, 84, 'female', 36, 'alive', null, '1977-09-06'),
    ('Wade', 6, 86, 'female', 36, 'alive', null, '1977-09-06'),
    ('Warren', 6, 87, 'female', 36, 'alive', null, '1977-09-06'),
    ('Fernando', 6, 88, 'female', 36, 'alive', null, '1977-09-06'),
    ('Titus', 6, 89, 'male', 37, 'alive', null, '1977-09-06'),
    ('Leonel', 6, 90, 'male', 37, 'alive', null, '1977-09-06'),
    ('Edwin', 6, 5, 'male', 37, 'alive', null, '1977-09-06'),
    ('Cairo', 6, 6, 'male', 37, 'alive', null, '2005-09-06'),
    ('Corbin', 6, 7, 'male', 38, 'alive', null, '1977-09-06'),
    ('Dakota', 6, 8, 'male', 38, 'alive', null, '1977-09-06'),
    ('Ismael', 6, 9, 'male', 38, 'alive', null, '1977-09-06'),
    ('Colson', 6, 10, 'male', 38, 'alive', null, '1977-09-06'),
    ('Killian', 6, 11, 'male', 38, 'alive', null, '1977-09-06'),
    ('Major', 6, 12, 'male', 38, 'alive', null, '1977-09-06'),
    ('Tate', 6, 13, 'male', 38, 'alive', null, '1977-09-06'),
    ('Gianni', 6, 16, 'male', 38, 'alive', null, '1977-09-06'),
    ('Elian', 6, 17, 'male', 38, 'alive', null, '1977-09-06'),
    ('Remy', 6, 18, 'male', 38, 'alive', null, '1977-09-06'),
    ('Lawson', 6, 19, 'male', 38, 'alive', null, '1977-09-06'),
    ('Niko', 6, 21, 'male', 38, 'alive', null, '1977-09-06'),
    ('Nasir', 6, 22, 'male', 38, 'alive', null, '1977-09-06'),
    ('Kade', 6, 25, 'male', 38, 'alive', null, '1977-09-06'),
    ('Armani', 6, 26, 'male', 38, 'alive', null, '1977-09-06'),
    ('Ezequiel', 6, 27, 'male', 38, 'alive', null, '1977-09-06'),
    ('Marshall', 6, 28, 'male', 38, 'alive', null, '1977-09-06'),
    ('Hector', 6, 31, 'female', 39, 'alive', null, '1977-09-06'),
    ('Desmond', 6, 35, 'female', 39, 'alive', null, '1977-09-06'),
    ('Kason', 6, 36, 'female', 39, 'alive', null, '1977-09-06'),
    ('Garrett', 6, 37, 'female', 39, 'alive', null, '1977-09-06'),
    ('Jared', 6, 39, 'female', 39, 'alive', null, '1977-09-06'),
    ('Cyrus', 6, 40, 'female', 39, 'alive', null, '1977-09-06'),
    ('Russell', 6, 48, 'female', 39, 'alive', null, '1977-09-06'),
    ('Cesar', 6, 50, 'female', 39, 'alive', null, '1977-09-06'),
    ('Tyson', 6, 51, 'female', 39, 'alive', null, '1977-09-06'),
    ('Malik', 6, 56, 'female', 39, 'alive', null, '1977-09-06'),
    -- advanced dragons
    ('Donovan', 7, 59, 'female', 40, 'alive', null, '1977-09-06'),
    ('Jaxton', 7, 60, 'female', 40, 'alive', null, '1977-09-06'),
    ('Cade', 7, 61, 'female', 40, 'alive', null, '1977-09-06'),
    ('Romeo', 7, 62, 'female', 40, 'alive', null, '1977-09-06'),
    ('Nehemiah', 7, 63, 'female', 40, 'alive', null, '1977-09-06'),
    ('Sergio', 7, 66, 'female', 40, 'alive', null, '1977-09-06'),
    ('Iker', 7, 70, 'female', 40, 'alive', null, '1977-09-06'),
    ('Caiden', 7, 74, 'female', 40, 'alive', null, '1977-09-06'),
    ('Jay', 7, 75, 'female', 40, 'alive', null, '1977-09-06'),
    ('Pablo', 7, 76, 'female', 40, 'alive', null, '1977-09-06'),
    ('Devin', 7, 79, 'female', 40, 'alive', null, '1977-09-06'),
    ('Jeffrey', 7, 80, 'female', 40, 'alive', null, '1977-09-06'),
    ('Otto', 7, 83, 'female', 40, 'alive', null, '1977-09-06'),
    ('Kamari', 7, 84, 'female', 40, 'alive', null, '1977-09-06'),
    ('Ronin', 7, 86, 'female', 40, 'alive', null, '1977-09-06'),
    ('Johnny', 7, 87, 'female', 40, 'alive', null, '1977-09-06'),
    ('Clark', 7, 88, 'female', 40, 'alive', null, '1977-09-06'),
    ('Ari', 7, 89, 'female', 40, 'alive', null, '1977-09-06'),
    ('Marco', 7, 90, 'female', 40, 'alive', null, '1977-09-06'),
    ('Edgar', 7, 5, 'male', 41, 'alive', null, '1977-09-06'),
    ('Bowen', 7, 6, 'male', 41, 'alive', null, '2012-09-06'),
    ('Jaiden', 7, 7, 'male', 41, 'alive', null, '1977-09-06'),
    ('Grady', 7, 8, 'male', 41, 'alive', null, '1977-09-06'),
    ('Zayne', 7, 9, 'male', 41, 'alive', null, '1977-09-06'),
    ('Sullivan', 7, 10, 'female', 42, 'alive', null, '1977-09-06'),
    ('Jayceon', 7, 11, 'female', 42, 'alive', null, '1977-09-06'),
    ('Sterling', 7, 12, 'female', 42, 'alive', null, '1977-09-06'),
    ('Andy', 7, 13, 'female', 42, 'alive', null, '1977-09-06'),
    ('Conor', 7, 16, 'female', 42, 'alive', null, '1977-09-06'),
    ('Raiden', 7, 17, 'female', 42, 'alive', null, '1977-09-06'),
    ('Royal', 7, 18, 'female', 42, 'alive', null, '1977-09-06'),
    ('Royce', 7, 19, 'female', 42, 'alive', null, '1977-09-06'),
    ('Solomon', 7, 21, 'female', 42, 'alive', null, '1977-09-06'),
    ('Trevor', 7, 22, 'female', 42, 'alive', null, '1977-09-06'),
    ('Winston', 7, 25, 'female', 42, 'alive', null, '1977-09-06'),
    ('Emanuel', 7, 26, 'female', 42, 'alive', null, '1977-09-06'),
    ('Finnegan', 7, 27, 'female', 42, 'alive', null, '1977-09-06'),
    ('Pedro', 7, 28, 'female', 42, 'alive', null, '1977-09-06'),
    ('Luciano', 7, 31, 'female', 42, 'alive', null, '1977-09-06'),
    ('Harvey', 7, 35, 'female', 42, 'alive', null, '1977-09-06'),
    ('Franklin', 7, 36, 'female', 42, 'alive', null, '1977-09-06'),
    ('Noel', 7, 37, 'female', 42, 'alive', null, '1977-09-06'),
    ('Troy', 7, 39, 'female', 42, 'alive', null, '1977-09-06'),
    ('Princeton', 7, 40, 'female', 43, 'alive', null, '1977-09-06'),
    ('Johnathan', 7, 48, 'female', 43, 'alive', null, '1977-09-06'),
    ('Erik', 7, 50, 'female', 43, 'alive', null, '1977-09-06'),
    ('Fabian', 7, 51, 'female', 43, 'alive', null, '1977-09-06'),
    ('Oakley', 7, 56, 'female', 43, 'alive', null, '1977-09-06'),
    ('Rhys', 7, 58, 'female', 43, 'alive', null, '1977-09-06'),
    ('Porter', 7, 59, 'female', 44, 'alive', null, '1977-09-06'),
    ('Hugo', 7, 60, 'female', 44, 'alive', null, '1977-09-06'),
    ('Frank', 7, 61, 'female', 44, 'alive', null, '1977-09-06'),
    ('Damon', 7, 62, 'female', 44, 'alive', null, '1977-09-06'),
    ('Kendrick', 7, 63, 'female', 44, 'alive', null, '1977-09-06'),
    ('Mathias', 7, 66, 'female', 44, 'alive', null, '1977-09-06'),
    ('Milan', 7, 70, 'female', 44, 'alive', null, '1977-09-06'),
    ('Peyton', 7, 74, 'female', 44, 'alive', null, '1977-09-06'),
    ('Wilder', 7, 75, 'male', 46, 'alive', null, '1977-09-06'),
    ('Callan', 7, 76, 'male', 46, 'alive', null, '1977-09-06'),
    ('Gregory', 7, 79, 'male', 46, 'alive', null, '1977-09-06'),
    ('Seth', 7, 80, 'male', 46, 'alive', null, '1977-09-06'),
    ('Matthias', 7, 83, 'male', 46, 'alive', null, '1977-09-06'),
    ('Briggs', 7, 84, 'male', 46, 'alive', null, '1977-09-06'),
    ('Ibrahim', 7, 86, 'male', 46, 'alive', null, '1977-09-06'),
    ('Roberto', 7, 87, 'male', 46, 'alive', null, '1977-09-06'),
    ('Conner', 7, 88, 'male', 46, 'alive', null, '1977-09-06'),
    ('Quinn', 7, 89, 'male', 46, 'alive', null, '1977-09-06'),
    ('Kashton', 7, 90, 'male', 46, 'alive', null, '1977-09-06'),
    ('Sage', 7, 5, 'male', 46, 'alive', null, '1977-09-06'),
    ('Santino', 7, 6, 'male', 46, 'alive', null, '2001-09-06'),
    ('Kolton', 7, 7, 'male', 46, 'alive', null, '1977-09-06'),
    ('Alijah', 7, 8, 'male', 46, 'alive', null, '1977-09-06'),
    ('Dominick', 7, 9, 'male', 46, 'alive', null, '1977-09-06'),
    ('Zyairee', 7, 10, 'male', 46, 'alive', null, '1977-09-06'),
    ('Apolloo', 7, 11, 'male', 46, 'alive', null, '1977-09-06'),
    ('Kyloo', 7, 12, 'male', 46, 'alive', null, '1977-09-06'),
    ('Reedd', 7, 13, 'male', 46, 'alive', null, '1977-09-06'),
    ('Philipp', 7, 16, 'male', 46, 'alive', null, '1977-09-06'),
    ('Kiann', 7, 17, 'male', 46, 'alive', null, '1977-09-06'),
    ('Shawnn', 7, 18, 'male', 46, 'alive', null, '1977-09-06'),
    ('Zyaire', 7, 10, 'female', 47, 'alive', null, '1977-09-06'),
    ('Apollo', 7, 11, 'female', 47, 'alive', null, '1977-09-06'),
    ('Kylo', 7, 12, 'female', 47, 'alive', null, '1977-09-06'),
    ('Reed', 7, 13, 'female', 47, 'alive', null, '1977-09-06'),
    ('Philip', 7, 16, 'female', 47, 'alive', null, '1977-09-06'),
    ('Kian', 7, 17, 'female', 47, 'alive', null, '1977-09-06'),
    ('Shawn', 7, 18, 'female', 47, 'alive', null, '1977-09-06'),
    ('Kaison', 7, 19, 'female', 47, 'alive', null, '1977-09-06'),
    ('Leonidas', 7, 21, 'female', 47, 'alive', null, '1977-09-06'),
    ('Ayaan', 7, 22, 'female', 47, 'alive', null, '1977-09-06'),
    ('Lucca', 7, 25, 'female', 47, 'alive', null, '1977-09-06'),
    ('Memphis', 7, 26, 'female', 47, 'alive', null, '1977-09-06'),
    ('Ford', 7, 27, 'female', 47, 'alive', null, '1977-09-06'),
    ('Baylor', 7, 28, 'female', 47, 'alive', null, '1977-09-06'),
    ('Kyson', 7, 31, 'female', 47, 'alive', null, '1977-09-06'),
    ('Uriel', 7, 35, 'female', 47, 'alive', null, '1977-09-06'),
    ('Allen', 7, 36, 'female', 47, 'alive', null, '1977-09-06'),
    ('Collin', 7, 37, 'female', 47, 'alive', null, '1977-09-06'),
    ('Ruben', 7, 39, 'female', 47, 'alive', null, '1977-09-06'),
    ('Archie', 7, 40, 'female', 47, 'alive', null, '1977-09-06'),
    ('Dalton', 7, 48, 'female', 47, 'alive', null, '1977-09-06'),
    ('Esteban', 7, 50, 'female', 47, 'alive', null, '1977-09-06'),
    ('Adan', 7, 51, 'female', 47, 'alive', null, '1977-09-06'),
    ('Forrest', 7, 59, 'female', 48, 'alive', null, '1977-09-06'),
    ('Alonzo', 7, 60, 'female', 48, 'alive', null, '1977-09-06'),
    ('Isaias', 7, 61, 'female', 48, 'alive', null, '1977-09-06'),
    ('Leland', 7, 62, 'female', 48, 'alive', null, '1977-09-06'),
    ('Jase', 7, 63, 'female', 48, 'alive', null, '1977-09-06'),
    ('Dax', 7, 66, 'female', 48, 'alive', null, '1977-09-06'),
    ('Kasen', 7, 70, 'female', 48, 'alive', null, '1977-09-06'),
    ('Gage', 7, 74, 'male', 49, 'alive', null, '1977-09-06'),
    ('Kamden', 7, 75, 'male', 49, 'alive', null, '1977-09-06'),
    ('Marcos', 7, 76, 'male', 49, 'alive', null, '1977-09-06'),
    ('Jamison', 7, 79, 'male', 49, 'alive', null, '1977-09-06'),
    ('Francis', 7, 80, 'male', 49, 'alive', null, '1977-09-06'),
    ('Hank', 7, 83, 'male', 49, 'alive', null, '1977-09-06'),
    ('Alexis', 7, 84, 'male', 49, 'alive', null, '1977-09-06'),
    ('Tripp', 7, 86, 'male', 49, 'alive', null, '1977-09-06'),
    ('Frederick', 7, 87, 'male', 49, 'alive', null, '1977-09-06'),
    ('Jonas', 7, 88, 'male', 49, 'alive', null, '1977-09-06'),
    ('Stetson', 7, 89, 'male', 49, 'alive', null, '1977-09-06'),
    ('Cassius', 7, 90, 'male', 49, 'alive', null, '1977-09-06'),
    ('Izaiah', 7, 5, 'male', 49, 'alive', null, '1977-09-06'),
    ('Eden', 7, 6, 'male', 49, 'alive', null, '1977-09-06'),
    ('Maximilian', 7, 7, 'male', 49, 'alive', null, '1977-09-06'),
    ('Rocco', 7, 8, 'male', 49, 'alive', null, '1977-09-06'),
    ('Tatum', 7, 9, 'male', 49, 'alive', null, '1977-09-06'),
    ('Keegan', 7, 59, 'female', 50, 'alive', null, '1977-09-06'),
    ('Aziel', 7, 60, 'female', 50, 'alive', null, '1977-09-06'),
    ('Moses', 7, 61, 'female', 50, 'alive', null, '1977-09-06'),
    ('Bruce', 7, 62, 'female', 50, 'alive', null, '1977-09-06'),
    ('Lewis', 7, 63, 'female', 50, 'alive', null, '1977-09-06'),
    ('Braylen', 7, 66, 'female', 50, 'alive', null, '1977-09-06'),
    ('Omari', 7, 70, 'female', 50, 'alive', null, '1977-09-06');

INSERT INTO dragon_carers_trainers (dragon_id, worker_id, status)
VALUES (1, 65, true),
       (2, 101, true),
       (3, 47, true),
       (4, 96, true),
       (5, 112, true),
       (6, 122, true),
       (7, 80, true),
       (8, 57, true),
       (9, 36, true),
       (10, 68, true),
       (11, 98, true),
       (12, 41, true),
       (13, 82, true),
       (14, 31, true),
       (15, 95, true),
       (16, 54, true),
       (17, 49, true),
       (18, 99, true),
       (19, 104, true),
       (20, 59, true),
       (21, 73, true),
       (22, 59, true),
       (23, 50, true),
       (24, 64, true),
       (25, 52, true),
       (26, 101, true),
       (27, 104, true),
       (28, 67, true),
       (29, 31, true),
       (30, 59, true),
       (31, 61, true),
       (32, 87, true),
       (33, 43, true),
       (34, 37, true),
       (35, 43, true),
       (36, 52, true),
       (37, 59, true),
       (38, 30, true),
       (39, 67, true),
       (40, 29, true),
       (41, 43, true),
       (42, 103, true),
       (43, 111, true),
       (44, 64, true),
       (45, 31, true),
       (46, 102, true),
       (47, 44, true),
       (48, 69, true),
       (49, 48, true),
       (50, 30, true),
       (51, 53, true),
       (52, 52, true),
       (53, 36, true),
       (54, 67, true),
       (55, 37, true),
       (56, 80, true),
       (57, 73, true),
       (58, 76, true),
       (59, 56, true),
       (60, 45, true),
       (61, 39, true),
       (62, 50, true),
       (63, 123, true),
       (64, 37, true),
       (65, 91, true),
       (66, 56, true),
       (67, 98, true),
       (68, 35, true),
       (69, 88, true),
       (70, 41, true),
       (71, 73, true),
       (72, 40, true),
       (73, 48, true),
       (74, 112, true),
       (75, 43, true),
       (76, 85, true),
       (77, 78, true),
       (78, 35, true),
       (79, 54, true),
       (80, 42, true),
       (81, 96, true),
       (82, 29, true),
       (83, 53, true),
       (84, 43, true),
       (85, 37, true),
       (86, 94, true),
       (87, 63, true),
       (88, 112, true),
       (89, 41, true),
       (90, 89, true),
       (91, 124, true),
       (92, 65, true),
       (93, 74, true),
       (94, 36, true),
       (95, 44, true),
       (96, 120, true),
       (97, 44, true),
       (98, 74, true),
       (99, 72, true),
       (100, 50, true),
       (101, 49, true),
       (102, 32, true),
       (103, 35, true),
       (104, 84, true),
       (105, 90, true),
       (106, 123, true),
       (107, 78, true),
       (108, 52, true),
       (109, 71, true),
       (110, 65, true),
       (111, 80, true),
       (112, 80, true),
       (113, 43, true),
       (114, 87, true),
       (115, 72, true),
       (116, 61, true),
       (117, 81, true),
       (118, 69, true),
       (119, 104, true),
       (120, 49, true),
       (121, 98, true),
       (122, 83, true),
       (123, 84, true),
       (124, 32, true),
       (125, 31, true),
       (126, 63, true),
       (127, 39, true),
       (128, 38, true),
       (129, 97, true),
       (130, 101, true),
       (131, 104, true),
       (132, 122, true),
       (133, 111, true),
       (134, 45, true),
       (135, 84, true),
       (136, 70, true),
       (137, 68, true),
       (138, 123, true),
       (139, 82, true),
       (140, 73, true),
       (141, 65, true),
       (142, 80, true),
       (143, 112, true),
       (144, 65, true),
       (145, 74, true),
       (146, 97, true),
       (147, 123, true),
       (148, 49, true),
       (149, 43, true),
       (150, 43, true),
       (151, 122, true),
       (152, 83, true),
       (153, 124, true),
       (154, 49, true),
       (155, 73, true),
       (156, 70, true),
       (157, 72, true),
       (158, 122, true),
       (159, 79, true),
       (160, 80, true),
       (161, 84, true),
       (162, 56, true),
       (163, 57, true),
       (164, 74, true),
       (165, 48, true),
       (166, 39, true),
       (167, 111, true),
       (168, 44, true),
       (169, 71, true),
       (170, 94, true),
       (171, 47, true),
       (172, 95, true),
       (173, 68, true),
       (174, 84, true),
       (175, 63, true),
       (176, 124, true),
       (177, 84, true),
       (178, 92, true),
       (179, 36, true),
       (180, 70, true),
       (181, 52, true),
       (182, 104, true),
       (183, 54, true),
       (184, 68, true),
       (185, 89, true),
       (186, 112, true),
       (187, 71, true),
       (188, 74, true),
       (189, 30, true),
       (190, 73, true),
       (191, 65, true),
       (192, 53, true),
       (193, 122, true),
       (194, 45, true),
       (195, 63, true),
       (196, 41, true),
       (197, 102, true),
       (198, 40, true),
       (199, 50, true),
       (200, 101, true),
       (201, 52, true),
       (202, 33, true),
       (203, 31, true),
       (204, 83, true),
       (205, 67, true),
       (206, 120, true),
       (207, 28, true),
       (208, 104, true),
       (209, 92, true),
       (210, 111, true),
       (211, 88, true),
       (212, 80, true),
       (213, 85, true),
       (214, 45, true),
       (215, 53, true),
       (216, 65, true),
       (217, 32, true),
       (218, 80, true),
       (219, 58, true),
       (220, 41, true),
       (221, 65, true),
       (222, 31, true),
       (223, 32, true),
       (224, 35, true),
       (225, 71, true),
       (226, 39, true),
       (227, 122, true),
       (228, 30, true),
       (229, 53, true),
       (230, 95, true),
       (231, 94, true),
       (232, 58, true),
       (233, 52, true),
       (234, 80, true),
       (235, 104, true),
       (236, 60, true),
       (237, 120, true),
       (238, 41, true),
       (239, 44, true),
       (240, 56, true),
       (241, 32, true),
       (242, 85, true),
       (243, 93, true),
       (244, 51, true),
       (245, 78, true),
       (246, 61, true),
       (247, 101, true),
       (248, 43, true),
       (249, 46, true),
       (250, 50, true),
       (251, 101, true),
       (252, 29, true),
       (253, 81, true),
       (254, 118, true),
       (255, 93, true),
       (256, 60, true),
       (257, 122, true),
       (258, 80, true),
       (259, 28, true),
       (260, 34, true),
       (261, 48, true),
       (262, 50, true),
       (263, 59, true),
       (264, 95, true),
       (265, 67, true),
       (266, 58, true),
       (267, 54, true),
       (268, 76, true),
       (269, 111, true),
       (270, 43, true),
       (271, 80, true),
       (272, 53, true),
       (273, 120, true),
       (274, 84, true),
       (275, 76, true),
       (276, 50, true),
       (277, 50, true),
       (278, 39, true),
       (279, 85, true),
       (280, 82, true),
       (281, 101, true),
       (282, 69, true),
       (283, 70, true),
       (284, 84, true),
       (285, 76, true),
       (286, 68, true),
       (287, 43, true),
       (288, 36, true),
       (289, 82, true),
       (290, 45, true),
       (291, 95, true),
       (292, 88, true),
       (293, 39, true),
       (294, 36, true),
       (295, 46, true),
       (296, 38, true),
       (297, 50, true),
       (298, 94, true),
       (299, 74, true),
       (300, 93, true),
       (301, 78, true),
       (302, 111, true),
       (303, 73, true),
       (304, 94, true),
       (305, 89, true),
       (306, 61, true),
       (307, 79, true),
       (308, 89, true),
       (309, 88, true),
       (310, 112, true),
       (311, 102, true),
       (312, 74, true),
       (313, 59, true),
       (314, 29, true),
       (315, 66, true),
       (316, 36, true),
       (317, 30, true),
       (318, 86, true),
       (319, 28, true),
       (320, 70, true),
       (321, 94, true),
       (322, 71, true),
       (323, 87, true),
       (324, 31, true),
       (325, 103, true),
       (326, 94, true),
       (327, 31, true),
       (328, 72, true),
       (329, 103, true),
       (330, 80, true),
       (331, 55, true),
       (332, 86, true),
       (333, 124, true),
       (334, 56, true),
       (335, 32, true),
       (336, 60, true),
       (337, 91, true),
       (338, 53, true),
       (339, 56, true),
       (340, 80, true),
       (341, 65, true),
       (342, 42, true),
       (343, 57, true),
       (344, 87, true),
       (345, 120, true),
       (346, 50, true),
       (347, 71, true),
       (348, 56, true),
       (349, 47, true),
       (350, 124, true),
       (351, 91, true),
       (352, 74, true),
       (353, 49, true),
       (354, 83, true),
       (355, 85, true),
       (356, 91, true),
       (357, 73, true),
       (358, 32, true),
       (359, 83, true),
       (360, 94, true),
       (361, 103, true),
       (362, 30, true),
       (363, 120, true),
       (364, 80, true),
       (365, 36, true),
       (366, 80, true),
       (367, 38, true),
       (368, 118, true),
       (369, 85, true),
       (370, 84, true),
       (371, 83, true),
       (372, 56, true),
       (373, 77, true),
       (374, 56, true),
       (375, 95, true),
       (376, 31, true),
       (377, 70, true),
       (378, 71, true),
       (379, 91, true),
       (380, 44, true),
       (381, 45, true),
       (382, 56, true),
       (383, 51, true),
       (384, 66, true),
       (385, 76, true),
       (386, 72, true),
       (387, 84, true),
       (388, 123, true),
       (389, 61, true),
       (390, 33, true),
       (391, 82, true),
       (392, 60, true),
       (393, 94, true),
       (394, 118, true),
       (395, 71, true),
       (396, 110, true),
       (397, 41, true),
       (398, 95, true),
       (399, 77, true),
       (400, 112, true),
       (401, 73, true),
       (402, 44, true),
       (403, 123, true),
       (404, 55, true),
       (405, 41, true),
       (406, 32, true),
       (407, 62, true),
       (408, 68, true),
       (409, 67, true),
       (410, 45, true),
       (411, 90, true),
       (412, 53, true),
       (413, 73, true),
       (414, 29, true),
       (415, 40, true),
       (416, 29, true),
       (417, 122, true),
       (418, 36, true),
       (419, 70, true),
       (420, 71, true),
       (421, 124, true),
       (422, 62, true),
       (423, 59, true),
       (424, 47, true),
       (425, 47, true),
       (426, 89, true),
       (427, 73, true),
       (428, 40, true),
       (429, 81, true),
       (430, 56, true),
       (431, 72, true),
       (432, 96, true),
       (433, 92, true),
       (434, 48, true),
       (435, 85, true),
       (436, 74, true),
       (437, 51, true),
       (438, 61, true),
       (439, 105, true),
       (440, 82, true),
       (441, 98, true),
       (442, 68, true),
       (443, 31, true),
       (444, 31, true),
       (445, 80, true),
       (446, 71, true),
       (447, 120, true),
       (448, 58, true),
       (449, 112, true),
       (450, 69, true),
       (451, 55, true),
       (452, 29, true),
       (453, 84, true),
       (454, 28, true),
       (455, 93, true),
       (456, 37, true),
       (457, 122, true),
       (458, 54, true),
       (459, 49, true),
       (460, 42, true),
       (461, 111, true),
       (462, 101, true),
       (463, 75, true),
       (464, 95, true),
       (465, 81, true),
       (466, 30, true),
       (467, 72, true),
       (468, 88, true),
       (469, 111, true),
       (470, 47, true),
       (471, 64, true),
       (472, 88, true),
       (473, 118, true),
       (474, 69, true),
       (475, 86, true),
       (476, 46, true),
       (477, 80, true),
       (478, 37, true),
       (479, 80, true),
       (480, 78, true),
       (481, 96, true),
       (482, 91, true),
       (483, 33, true),
       (484, 85, true),
       (485, 73, true),
       (486, 101, true),
       (487, 39, true),
       (488, 64, true),
       (489, 72, true),
       (490, 56, true),
       (491, 32, true),
       (492, 42, true),
       (493, 63, true),
       (494, 100, true),
       (495, 61, true),
       (496, 53, true),
       (497, 74, true),
       (498, 90, true),
       (499, 36, true),
       (500, 75, true),
       (501, 88, true),
       (502, 118, true),
       (503, 122, true),
       (504, 58, true),
       (505, 94, true),
       (506, 60, true),
       (1, 176, true),
       (2, 170, true),
       (3, 194, true),
       (4, 207, true),
       (5, 215, true),
       (6, 144, true),
       (7, 210, true),
       (8, 191, true),
       (9, 157, true),
       (10, 157, true),
       (11, 187, true),
       (12, 146, true),
       (13, 145, true),
       (14, 203, true),
       (15, 182, true),
       (16, 205, true),
       (17, 165, true),
       (18, 177, true),
       (19, 182, true),
       (20, 196, true),
       (21, 169, true),
       (22, 168, true),
       (23, 193, true),
       (24, 164, true),
       (25, 148, true),
       (26, 184, true),
       (27, 188, true),
       (28, 176, true),
       (29, 158, true),
       (30, 131, true),
       (31, 219, true),
       (32, 149, true),
       (33, 132, true),
       (34, 194, true),
       (35, 129, true),
       (36, 183, true),
       (37, 208, true),
       (38, 158, true),
       (39, 214, true),
       (40, 140, true),
       (41, 140, true),
       (42, 201, true),
       (43, 194, true),
       (44, 137, true),
       (45, 154, true),
       (46, 216, true),
       (47, 139, true),
       (48, 213, true),
       (49, 172, true),
       (50, 184, true),
       (51, 196, true),
       (52, 160, true),
       (53, 169, true),
       (54, 177, true),
       (55, 183, true),
       (56, 133, true),
       (57, 171, true),
       (58, 143, true),
       (59, 198, true),
       (60, 133, true),
       (61, 197, true),
       (62, 198, true),
       (63, 154, true),
       (64, 210, true),
       (65, 218, true),
       (66, 154, true),
       (67, 136, true),
       (68, 176, true),
       (69, 153, true),
       (70, 206, true),
       (71, 170, true),
       (72, 190, true),
       (73, 219, true),
       (74, 154, true),
       (75, 178, true),
       (76, 156, true),
       (77, 163, true),
       (78, 130, true),
       (79, 204, true),
       (80, 150, true),
       (81, 203, true),
       (82, 221, true),
       (83, 183, true),
       (84, 152, true),
       (85, 194, true),
       (86, 131, true),
       (87, 149, true),
       (88, 222, true),
       (89, 188, true),
       (90, 201, true),
       (91, 208, true),
       (92, 195, true),
       (93, 129, true),
       (94, 184, true),
       (95, 219, true),
       (96, 146, true),
       (97, 201, true),
       (98, 127, true),
       (99, 156, true),
       (100, 207, true),
       (101, 144, true),
       (102, 212, true),
       (103, 166, true),
       (104, 144, true),
       (105, 153, true),
       (106, 140, true),
       (107, 130, true),
       (108, 183, true),
       (109, 208, true),
       (110, 186, true),
       (111, 196, true),
       (112, 141, true),
       (113, 148, true),
       (114, 175, true),
       (115, 158, true),
       (116, 175, true),
       (117, 162, true),
       (118, 178, true),
       (119, 167, true),
       (120, 167, true),
       (121, 164, true),
       (122, 202, true),
       (123, 184, true),
       (124, 217, true),
       (125, 198, true),
       (126, 164, true),
       (127, 143, true),
       (128, 202, true),
       (129, 186, true),
       (130, 160, true),
       (131, 132, true),
       (132, 184, true),
       (133, 131, true),
       (134, 215, true),
       (135, 165, true),
       (136, 143, true),
       (137, 208, true),
       (138, 167, true),
       (139, 191, true),
       (140, 152, true),
       (141, 177, true),
       (142, 140, true),
       (143, 193, true),
       (144, 204, true),
       (145, 152, true),
       (146, 181, true),
       (147, 210, true),
       (148, 167, true),
       (149, 161, true),
       (150, 193, true),
       (151, 183, true),
       (152, 172, true),
       (153, 161, true),
       (154, 203, true),
       (155, 152, true),
       (156, 163, true),
       (157, 131, true),
       (158, 184, true),
       (159, 139, true),
       (160, 178, true),
       (161, 171, true),
       (162, 194, true),
       (163, 189, true),
       (164, 222, true),
       (165, 176, true),
       (166, 155, true),
       (167, 183, true),
       (168, 166, true),
       (169, 216, true),
       (170, 182, true),
       (171, 170, true),
       (172, 141, true),
       (173, 148, true),
       (174, 182, true),
       (175, 143, true),
       (176, 188, true),
       (177, 127, true),
       (178, 155, true),
       (179, 153, true),
       (180, 209, true),
       (181, 152, true),
       (182, 198, true),
       (183, 137, true),
       (184, 210, true),
       (185, 175, true),
       (186, 132, true),
       (187, 133, true),
       (188, 129, true),
       (189, 184, true),
       (190, 217, true),
       (191, 138, true),
       (192, 153, true),
       (193, 147, true),
       (194, 168, true),
       (195, 149, true),
       (196, 213, true),
       (197, 222, true),
       (198, 162, true),
       (199, 132, true),
       (200, 127, true),
       (201, 216, true),
       (202, 164, true),
       (203, 171, true),
       (204, 219, true),
       (205, 197, true),
       (206, 148, true),
       (207, 168, true),
       (208, 210, true),
       (209, 163, true),
       (210, 156, true),
       (211, 158, true),
       (212, 178, true),
       (213, 222, true),
       (214, 217, true),
       (215, 203, true),
       (216, 185, true),
       (217, 184, true),
       (218, 221, true),
       (219, 135, true),
       (220, 154, true),
       (221, 135, true),
       (222, 146, true),
       (223, 210, true),
       (224, 211, true),
       (225, 148, true),
       (226, 211, true),
       (227, 156, true),
       (228, 188, true),
       (229, 213, true),
       (230, 222, true),
       (231, 213, true),
       (232, 163, true),
       (233, 183, true),
       (234, 144, true),
       (235, 129, true),
       (236, 202, true),
       (237, 146, true),
       (238, 222, true),
       (239, 137, true),
       (240, 154, true),
       (241, 144, true),
       (242, 182, true),
       (243, 163, true),
       (244, 203, true),
       (245, 200, true),
       (246, 187, true),
       (247, 215, true),
       (248, 169, true),
       (249, 189, true),
       (250, 184, true),
       (251, 208, true),
       (252, 161, true),
       (253, 163, true),
       (254, 208, true),
       (255, 197, true),
       (256, 209, true),
       (257, 203, true),
       (258, 216, true),
       (259, 156, true),
       (260, 166, true),
       (261, 197, true),
       (262, 153, true),
       (263, 160, true),
       (264, 223, true),
       (265, 150, true),
       (266, 179, true),
       (267, 211, true),
       (268, 136, true),
       (269, 148, true),
       (270, 167, true),
       (271, 215, true),
       (272, 127, true),
       (273, 213, true),
       (274, 207, true),
       (275, 200, true),
       (276, 168, true),
       (277, 188, true),
       (278, 200, true),
       (279, 147, true),
       (280, 187, true),
       (281, 216, true),
       (282, 158, true),
       (283, 201, true),
       (284, 222, true),
       (285, 134, true),
       (286, 194, true),
       (287, 146, true),
       (288, 157, true),
       (289, 174, true),
       (290, 207, true),
       (291, 178, true),
       (292, 148, true),
       (293, 219, true),
       (294, 157, true),
       (295, 163, true),
       (296, 202, true),
       (297, 203, true),
       (298, 207, true),
       (299, 131, true),
       (300, 139, true),
       (301, 134, true),
       (302, 194, true),
       (303, 156, true),
       (304, 129, true),
       (305, 175, true),
       (306, 185, true),
       (307, 134, true),
       (308, 181, true),
       (309, 132, true),
       (310, 199, true),
       (311, 147, true),
       (312, 132, true),
       (313, 165, true),
       (314, 182, true),
       (315, 204, true),
       (316, 153, true),
       (317, 215, true),
       (318, 135, true),
       (319, 215, true),
       (320, 139, true),
       (321, 208, true),
       (322, 221, true),
       (323, 143, true),
       (324, 221, true),
       (325, 174, true),
       (326, 168, true),
       (327, 152, true),
       (328, 193, true),
       (329, 130, true),
       (330, 156, true),
       (331, 151, true),
       (332, 143, true),
       (333, 154, true),
       (334, 216, true),
       (335, 168, true),
       (336, 185, true),
       (337, 159, true),
       (338, 170, true),
       (339, 161, true),
       (340, 156, true),
       (341, 186, true),
       (342, 163, true),
       (343, 195, true),
       (344, 177, true),
       (345, 207, true),
       (346, 153, true),
       (347, 182, true),
       (348, 215, true),
       (349, 198, true),
       (350, 196, true),
       (351, 204, true),
       (352, 203, true),
       (353, 168, true),
       (354, 145, true),
       (355, 198, true),
       (356, 204, true),
       (357, 182, true),
       (358, 196, true),
       (359, 185, true),
       (360, 188, true),
       (361, 172, true),
       (362, 158, true),
       (363, 153, true),
       (364, 157, true),
       (365, 147, true),
       (366, 215, true),
       (367, 137, true),
       (368, 169, true),
       (369, 193, true),
       (370, 182, true),
       (371, 150, true),
       (372, 223, true),
       (373, 218, true),
       (374, 146, true),
       (375, 131, true),
       (376, 165, true),
       (377, 149, true),
       (378, 178, true),
       (379, 180, true),
       (380, 192, true),
       (381, 171, true),
       (382, 183, true),
       (383, 157, true),
       (384, 191, true),
       (385, 214, true),
       (386, 196, true),
       (387, 178, true),
       (388, 212, true),
       (389, 190, true),
       (390, 150, true),
       (391, 190, true),
       (392, 186, true),
       (393, 127, true),
       (394, 131, true),
       (395, 141, true),
       (396, 198, true),
       (397, 147, true),
       (398, 215, true),
       (399, 151, true),
       (400, 199, true),
       (401, 133, true),
       (402, 202, true),
       (403, 196, true),
       (404, 130, true),
       (405, 207, true),
       (406, 144, true),
       (407, 173, true),
       (408, 169, true),
       (409, 202, true),
       (410, 188, true),
       (411, 168, true),
       (412, 141, true),
       (413, 208, true),
       (414, 154, true),
       (415, 218, true),
       (416, 207, true),
       (417, 183, true),
       (418, 216, true),
       (419, 211, true),
       (420, 210, true),
       (421, 183, true),
       (422, 186, true),
       (423, 193, true),
       (424, 129, true),
       (425, 157, true),
       (426, 192, true),
       (427, 188, true),
       (428, 162, true),
       (429, 174, true),
       (430, 193, true),
       (431, 199, true),
       (432, 167, true),
       (433, 180, true),
       (434, 181, true),
       (435, 140, true),
       (436, 144, true),
       (437, 178, true),
       (438, 139, true),
       (439, 138, true),
       (440, 218, true),
       (441, 218, true),
       (442, 207, true),
       (443, 168, true),
       (444, 156, true),
       (445, 153, true),
       (446, 156, true),
       (447, 193, true),
       (448, 143, true),
       (449, 212, true),
       (450, 144, true),
       (451, 211, true),
       (452, 158, true),
       (453, 148, true),
       (454, 193, true),
       (455, 174, true),
       (456, 171, true),
       (457, 223, true),
       (458, 151, true),
       (459, 152, true),
       (460, 175, true),
       (461, 140, true),
       (462, 213, true),
       (463, 136, true),
       (464, 129, true),
       (465, 138, true),
       (466, 146, true),
       (467, 167, true),
       (468, 215, true),
       (469, 207, true),
       (470, 148, true),
       (471, 159, true),
       (472, 208, true),
       (473, 147, true),
       (474, 222, true),
       (475, 200, true),
       (476, 135, true),
       (477, 169, true),
       (478, 221, true),
       (479, 213, true),
       (480, 142, true),
       (481, 188, true),
       (482, 201, true),
       (483, 218, true),
       (484, 156, true),
       (485, 206, true),
       (486, 221, true),
       (487, 192, true),
       (488, 175, true),
       (489, 153, true),
       (490, 131, true),
       (491, 131, true),
       (492, 142, true),
       (493, 155, true),
       (494, 190, true),
       (495, 181, true),
       (496, 171, true),
       (497, 183, true),
       (498, 208, true),
       (499, 223, true),
       (500, 172, true),
       (501, 165, true),
       (502, 206, true),
       (503, 178, true),
       (504, 174, true),
       (505, 144, true),
       (506, 145, true);

INSERT INTO dragon_couples (mother_id, father_id)
VALUES (80, 32),
       (168, 495),
       (81, 33),
       (169, 210);

INSERT INTO children (child_id, parents_id)
VALUES (308, 1),
       (368, 1),
       (344, 1),
       (32, 2),
       (2, 3),
       (393, 3),
       (130, 3),
       (442, 3),
       (345, 4),
       (309, 4);

INSERT INTO action_type_influence (influence_value, char_type, action_type)
VALUES (5, 'health', 'feed'),
       (-10, 'health', 'train'),
       (-20, 'health', 'hit'),
       (10, 'health', 'treat'),
       (5, 'training', 'train'),
       (3, 'training', 'scold'),
       (-3, 'training', 'hit'),
       (3, 'happiness', 'feed'),
       (5, 'happiness', 'play'),
       (-5, 'happiness', 'train'),
       (-3, 'happiness', 'scold'),
       (-10, 'happiness', 'hit'),
       (3, 'happiness', 'treat');


INSERT INTO dragon_characteristics (value, char_type, dragon_id)
VALUES (17, 'health', 1),
       (39, 'health', 2),
       (25, 'health', 3),
       (55, 'health', 4),
       (52, 'health', 5),
       (90, 'health', 6),
       (86, 'health', 7),
       (23, 'health', 8),
       (54, 'health', 9),
       (72, 'health', 10),
       (85, 'health', 11),
       (40, 'health', 12),
       (70, 'health', 13),
       (81, 'health', 14),
       (89, 'health', 15),
       (44, 'health', 16),
       (13, 'health', 17),
       (16, 'health', 18),
       (85, 'health', 19),
       (44, 'health', 20),
       (87, 'health', 21),
       (39, 'health', 22),
       (83, 'health', 23),
       (92, 'health', 24),
       (25, 'health', 25),
       (90, 'health', 26),
       (90, 'health', 27),
       (4, 'health', 28),
       (71, 'health', 29),
       (87, 'health', 30),
       (6, 'health', 31),
       (82, 'health', 32),
       (29, 'health', 33),
       (69, 'health', 34),
       (27, 'health', 35),
       (78, 'health', 36),
       (20, 'health', 37),
       (46, 'health', 38),
       (47, 'health', 39),
       (43, 'health', 40),
       (68, 'health', 41),
       (99, 'health', 42),
       (75, 'health', 43),
       (44, 'health', 44),
       (75, 'health', 45),
       (56, 'health', 46),
       (98, 'health', 47),
       (22, 'health', 48),
       (96, 'health', 49),
       (9, 'health', 50),
       (27, 'health', 51),
       (98, 'health', 52),
       (24, 'health', 53),
       (98, 'health', 54),
       (10, 'health', 55),
       (57, 'health', 56),
       (67, 'health', 57),
       (41, 'health', 58),
       (8, 'health', 59),
       (99, 'health', 60),
       (81, 'health', 61),
       (78, 'health', 62),
       (21, 'health', 63),
       (79, 'health', 64),
       (52, 'health', 65),
       (98, 'health', 66),
       (22, 'health', 67),
       (65, 'health', 68),
       (77, 'health', 69),
       (73, 'health', 70),
       (56, 'health', 71),
       (10, 'health', 72),
       (16, 'health', 73),
       (67, 'health', 74),
       (80, 'health', 75),
       (96, 'health', 76),
       (65, 'health', 77),
       (8, 'health', 78),
       (65, 'health', 79),
       (54, 'health', 80),
       (33, 'health', 81),
       (55, 'health', 82),
       (3, 'health', 83),
       (39, 'health', 84),
       (24, 'health', 85),
       (71, 'health', 86),
       (54, 'health', 87),
       (48, 'health', 88),
       (42, 'health', 89),
       (4, 'health', 90),
       (4, 'health', 91),
       (47, 'health', 92),
       (38, 'health', 93),
       (5, 'health', 94),
       (56, 'health', 95),
       (47, 'health', 96),
       (57, 'health', 97),
       (12, 'health', 98),
       (25, 'health', 99),
       (46, 'health', 100),
       (62, 'health', 101),
       (13, 'health', 102),
       (23, 'health', 103),
       (4, 'health', 104),
       (90, 'health', 105),
       (95, 'health', 106),
       (62, 'health', 107),
       (8, 'health', 108),
       (10, 'health', 109),
       (97, 'health', 110),
       (40, 'health', 111),
       (77, 'health', 112),
       (51, 'health', 113),
       (81, 'health', 114),
       (76, 'health', 115),
       (61, 'health', 116),
       (19, 'health', 117),
       (12, 'health', 118),
       (95, 'health', 119),
       (52, 'health', 120),
       (24, 'health', 121),
       (94, 'health', 122),
       (29, 'health', 123),
       (39, 'health', 124),
       (97, 'health', 125),
       (37, 'health', 126),
       (58, 'health', 127),
       (53, 'health', 128),
       (55, 'health', 129),
       (6, 'health', 130),
       (49, 'health', 131),
       (85, 'health', 132),
       (36, 'health', 133),
       (19, 'health', 134),
       (36, 'health', 135),
       (13, 'health', 136),
       (77, 'health', 137),
       (24, 'health', 138),
       (38, 'health', 139),
       (24, 'health', 140),
       (43, 'health', 141),
       (42, 'health', 142),
       (38, 'health', 143),
       (12, 'health', 144),
       (73, 'health', 145),
       (72, 'health', 146),
       (65, 'health', 147),
       (34, 'health', 148),
       (48, 'health', 149),
       (48, 'health', 150),
       (41, 'health', 151),
       (88, 'health', 152),
       (41, 'health', 153),
       (80, 'health', 154),
       (4, 'health', 155),
       (81, 'health', 156),
       (73, 'health', 157),
       (50, 'health', 158),
       (49, 'health', 159),
       (18, 'health', 160),
       (18, 'health', 161),
       (51, 'health', 162),
       (21, 'health', 163),
       (23, 'health', 164),
       (70, 'health', 165),
       (59, 'health', 166),
       (89, 'health', 167),
       (53, 'health', 168),
       (90, 'health', 169),
       (33, 'health', 170),
       (18, 'health', 171),
       (47, 'health', 172),
       (68, 'health', 173),
       (68, 'health', 174),
       (83, 'health', 175),
       (51, 'health', 176),
       (74, 'health', 177),
       (72, 'health', 178),
       (78, 'health', 179),
       (68, 'health', 180),
       (79, 'health', 181),
       (28, 'health', 182),
       (91, 'health', 183),
       (72, 'health', 184),
       (47, 'health', 185),
       (37, 'health', 186),
       (79, 'health', 187),
       (43, 'health', 188),
       (74, 'health', 189),
       (14, 'health', 190),
       (11, 'health', 191),
       (32, 'health', 192),
       (79, 'health', 193),
       (33, 'health', 194),
       (68, 'health', 195),
       (82, 'health', 196),
       (4, 'health', 197),
       (80, 'health', 198),
       (78, 'health', 199),
       (70, 'health', 200),
       (88, 'health', 201),
       (54, 'health', 202),
       (10, 'health', 203),
       (15, 'health', 204),
       (27, 'health', 205),
       (59, 'health', 206),
       (33, 'health', 207),
       (40, 'health', 208),
       (16, 'health', 209),
       (53, 'health', 210),
       (53, 'health', 211),
       (78, 'health', 212),
       (2, 'health', 213),
       (11, 'health', 214),
       (84, 'health', 215),
       (46, 'health', 216),
       (81, 'health', 217),
       (93, 'health', 218),
       (91, 'health', 219),
       (67, 'health', 220),
       (15, 'health', 221),
       (71, 'health', 222),
       (40, 'health', 223),
       (74, 'health', 224),
       (8, 'health', 225),
       (50, 'health', 226),
       (89, 'health', 227),
       (70, 'health', 228),
       (66, 'health', 229),
       (53, 'health', 230),
       (80, 'health', 231),
       (11, 'health', 232),
       (72, 'health', 233),
       (47, 'health', 234),
       (6, 'health', 235),
       (54, 'health', 236),
       (54, 'health', 237),
       (59, 'health', 238),
       (58, 'health', 239),
       (10, 'health', 240),
       (55, 'health', 241),
       (65, 'health', 242),
       (56, 'health', 243),
       (97, 'health', 244),
       (95, 'health', 245),
       (56, 'health', 246),
       (95, 'health', 247),
       (93, 'health', 248),
       (95, 'health', 249),
       (52, 'health', 250),
       (78, 'health', 251),
       (73, 'health', 252),
       (7, 'health', 253),
       (95, 'health', 254),
       (81, 'health', 255),
       (83, 'health', 256),
       (51, 'health', 257),
       (9, 'health', 258),
       (87, 'health', 259),
       (29, 'health', 260),
       (100, 'health', 261),
       (91, 'health', 262),
       (94, 'health', 263),
       (67, 'health', 264),
       (46, 'health', 265),
       (49, 'health', 266),
       (39, 'health', 267),
       (19, 'health', 268),
       (5, 'health', 269),
       (71, 'health', 270),
       (23, 'health', 271),
       (93, 'health', 272),
       (39, 'health', 273),
       (57, 'health', 274),
       (59, 'health', 275),
       (91, 'health', 276),
       (81, 'health', 277),
       (79, 'health', 278),
       (35, 'health', 279),
       (30, 'health', 280),
       (57, 'health', 281),
       (69, 'health', 282),
       (79, 'health', 283),
       (28, 'health', 284),
       (21, 'health', 285),
       (8, 'health', 286),
       (30, 'health', 287),
       (16, 'health', 288),
       (62, 'health', 289),
       (73, 'health', 290),
       (90, 'health', 291),
       (85, 'health', 292),
       (34, 'health', 293),
       (45, 'health', 294),
       (78, 'health', 295),
       (13, 'health', 296),
       (59, 'health', 297),
       (9, 'health', 298),
       (22, 'health', 299),
       (95, 'health', 300),
       (50, 'health', 301),
       (10, 'health', 302),
       (24, 'health', 303),
       (27, 'health', 304),
       (52, 'health', 305),
       (74, 'health', 306),
       (93, 'health', 307),
       (26, 'health', 308),
       (33, 'health', 309),
       (83, 'health', 310),
       (3, 'health', 311),
       (53, 'health', 312),
       (30, 'health', 313),
       (33, 'health', 314),
       (3, 'health', 315),
       (84, 'health', 316),
       (29, 'health', 317),
       (75, 'health', 318),
       (11, 'health', 319),
       (70, 'health', 320),
       (97, 'health', 321),
       (14, 'health', 322),
       (40, 'health', 323),
       (59, 'health', 324),
       (38, 'health', 325),
       (69, 'health', 326),
       (39, 'health', 327),
       (85, 'health', 328),
       (27, 'health', 329),
       (81, 'health', 330),
       (48, 'health', 331),
       (89, 'health', 332),
       (63, 'health', 333),
       (43, 'health', 334),
       (8, 'health', 335),
       (7, 'health', 336),
       (64, 'health', 337),
       (31, 'health', 338),
       (76, 'health', 339),
       (22, 'health', 340),
       (77, 'health', 341),
       (64, 'health', 342),
       (29, 'health', 343),
       (91, 'health', 344),
       (26, 'health', 345),
       (92, 'health', 346),
       (75, 'health', 347),
       (12, 'health', 348),
       (13, 'health', 349),
       (96, 'health', 350),
       (41, 'health', 351),
       (7, 'health', 352),
       (88, 'health', 353),
       (100, 'health', 354),
       (55, 'health', 355),
       (57, 'health', 356),
       (61, 'health', 357),
       (72, 'health', 358),
       (7, 'health', 359),
       (77, 'health', 360),
       (20, 'health', 361),
       (21, 'health', 362),
       (82, 'health', 363),
       (79, 'health', 364),
       (60, 'health', 365),
       (10, 'health', 366),
       (65, 'health', 367),
       (40, 'health', 368),
       (30, 'health', 369),
       (54, 'health', 370),
       (15, 'health', 371),
       (84, 'health', 372),
       (64, 'health', 373),
       (93, 'health', 374),
       (85, 'health', 375),
       (9, 'health', 376),
       (39, 'health', 377),
       (85, 'health', 378),
       (65, 'health', 379),
       (82, 'health', 380),
       (53, 'health', 381),
       (45, 'health', 382),
       (54, 'health', 383),
       (9, 'health', 384),
       (87, 'health', 385),
       (99, 'health', 386),
       (73, 'health', 387),
       (33, 'health', 388),
       (39, 'health', 389),
       (29, 'health', 390),
       (89, 'health', 391),
       (69, 'health', 392),
       (29, 'health', 393),
       (17, 'health', 394),
       (20, 'health', 395),
       (52, 'health', 396),
       (30, 'health', 397),
       (97, 'health', 398),
       (2, 'health', 399),
       (58, 'health', 400),
       (81, 'health', 401),
       (14, 'health', 402),
       (80, 'health', 403),
       (5, 'health', 404),
       (8, 'health', 405),
       (74, 'health', 406),
       (75, 'health', 407),
       (86, 'health', 408),
       (45, 'health', 409),
       (20, 'health', 410),
       (73, 'health', 411),
       (49, 'health', 412),
       (100, 'health', 413),
       (92, 'health', 414),
       (9, 'health', 415),
       (50, 'health', 416),
       (96, 'health', 417),
       (30, 'health', 418),
       (69, 'health', 419),
       (28, 'health', 420),
       (70, 'health', 421),
       (76, 'health', 422),
       (99, 'health', 423),
       (65, 'health', 424),
       (11, 'health', 425),
       (38, 'health', 426),
       (10, 'health', 427),
       (10, 'health', 428),
       (37, 'health', 429),
       (17, 'health', 430),
       (73, 'health', 431),
       (11, 'health', 432),
       (87, 'health', 433),
       (9, 'health', 434),
       (69, 'health', 435),
       (29, 'health', 436),
       (8, 'health', 437),
       (72, 'health', 438),
       (89, 'health', 439),
       (97, 'health', 440),
       (83, 'health', 441),
       (44, 'health', 442),
       (9, 'health', 443),
       (85, 'health', 444),
       (4, 'health', 445),
       (17, 'health', 446),
       (67, 'health', 447),
       (25, 'health', 448),
       (59, 'health', 449),
       (92, 'health', 450),
       (36, 'health', 451),
       (87, 'health', 452),
       (81, 'health', 453),
       (87, 'health', 454),
       (45, 'health', 455),
       (84, 'health', 456),
       (98, 'health', 457),
       (24, 'health', 458),
       (79, 'health', 459),
       (54, 'health', 460),
       (95, 'health', 461),
       (28, 'health', 462),
       (16, 'health', 463),
       (30, 'health', 464),
       (87, 'health', 465),
       (48, 'health', 466),
       (20, 'health', 467),
       (22, 'health', 468),
       (47, 'health', 469),
       (25, 'health', 470),
       (47, 'health', 471),
       (29, 'health', 472),
       (11, 'health', 473),
       (86, 'health', 474),
       (31, 'health', 475),
       (13, 'health', 476),
       (29, 'health', 477),
       (68, 'health', 478),
       (57, 'health', 479),
       (43, 'health', 480),
       (37, 'health', 481),
       (91, 'health', 482),
       (59, 'health', 483),
       (49, 'health', 484),
       (54, 'health', 485),
       (9, 'health', 486),
       (7, 'health', 487),
       (37, 'health', 488),
       (5, 'health', 489),
       (70, 'health', 490),
       (9, 'health', 491),
       (45, 'health', 492),
       (23, 'health', 493),
       (61, 'health', 494),
       (27, 'health', 495),
       (79, 'health', 496),
       (3, 'health', 497),
       (96, 'health', 498),
       (21, 'health', 499),
       (84, 'health', 500),
       (58, 'health', 501),
       (18, 'health', 502),
       (7, 'health', 503),
       (98, 'health', 504),
       (27, 'health', 505),
       (74, 'health', 506),
       (58, 'happiness', 1),
       (13, 'happiness', 2),
       (15, 'happiness', 3),
       (90, 'happiness', 4),
       (4, 'happiness', 5),
       (30, 'happiness', 6),
       (62, 'happiness', 7),
       (46, 'happiness', 8),
       (97, 'happiness', 9),
       (67, 'happiness', 10),
       (36, 'happiness', 11),
       (10, 'happiness', 12),
       (89, 'happiness', 13),
       (3, 'happiness', 14),
       (53, 'happiness', 15),
       (33, 'happiness', 16),
       (42, 'happiness', 17),
       (17, 'happiness', 18),
       (70, 'happiness', 19),
       (28, 'happiness', 20),
       (15, 'happiness', 21),
       (58, 'happiness', 22),
       (31, 'happiness', 23),
       (53, 'happiness', 24),
       (34, 'happiness', 25),
       (99, 'happiness', 26),
       (12, 'happiness', 27),
       (76, 'happiness', 28),
       (76, 'happiness', 29),
       (83, 'happiness', 30),
       (55, 'happiness', 31),
       (25, 'happiness', 32),
       (80, 'happiness', 33),
       (53, 'happiness', 34),
       (25, 'happiness', 35),
       (86, 'happiness', 36),
       (80, 'happiness', 37),
       (57, 'happiness', 38),
       (50, 'happiness', 39),
       (17, 'happiness', 40),
       (73, 'happiness', 41),
       (36, 'happiness', 42),
       (34, 'happiness', 43),
       (85, 'happiness', 44),
       (6, 'happiness', 45),
       (14, 'happiness', 46),
       (33, 'happiness', 47),
       (7, 'happiness', 48),
       (26, 'happiness', 49),
       (20, 'happiness', 50),
       (20, 'happiness', 51),
       (93, 'happiness', 52),
       (20, 'happiness', 53),
       (88, 'happiness', 54),
       (41, 'happiness', 55),
       (4, 'happiness', 56),
       (51, 'happiness', 57),
       (87, 'happiness', 58),
       (61, 'happiness', 59),
       (68, 'happiness', 60),
       (91, 'happiness', 61),
       (58, 'happiness', 62),
       (18, 'happiness', 63),
       (20, 'happiness', 64),
       (64, 'happiness', 65),
       (33, 'happiness', 66),
       (25, 'happiness', 67),
       (18, 'happiness', 68),
       (13, 'happiness', 69),
       (60, 'happiness', 70),
       (89, 'happiness', 71),
       (51, 'happiness', 72),
       (42, 'happiness', 73),
       (53, 'happiness', 74),
       (63, 'happiness', 75),
       (81, 'happiness', 76),
       (14, 'happiness', 77),
       (76, 'happiness', 78),
       (60, 'happiness', 79),
       (99, 'happiness', 80),
       (100, 'happiness', 81),
       (76, 'happiness', 82),
       (94, 'happiness', 83),
       (55, 'happiness', 84),
       (78, 'happiness', 85),
       (10, 'happiness', 86),
       (95, 'happiness', 87),
       (64, 'happiness', 88),
       (88, 'happiness', 89),
       (69, 'happiness', 90),
       (72, 'happiness', 91),
       (4, 'happiness', 92),
       (57, 'happiness', 93),
       (69, 'happiness', 94),
       (81, 'happiness', 95),
       (55, 'happiness', 96),
       (68, 'happiness', 97),
       (4, 'happiness', 98),
       (48, 'happiness', 99),
       (80, 'happiness', 100),
       (34, 'happiness', 101),
       (72, 'happiness', 102),
       (72, 'happiness', 103),
       (22, 'happiness', 104),
       (57, 'happiness', 105),
       (92, 'happiness', 106),
       (22, 'happiness', 107),
       (72, 'happiness', 108),
       (25, 'happiness', 109),
       (4, 'happiness', 110),
       (62, 'happiness', 111),
       (20, 'happiness', 112),
       (53, 'happiness', 113),
       (26, 'happiness', 114),
       (100, 'happiness', 115),
       (8, 'happiness', 116),
       (79, 'happiness', 117),
       (93, 'happiness', 118),
       (56, 'happiness', 119),
       (19, 'happiness', 120),
       (56, 'happiness', 121),
       (45, 'happiness', 122),
       (26, 'happiness', 123),
       (14, 'happiness', 124),
       (44, 'happiness', 125),
       (34, 'happiness', 126),
       (7, 'happiness', 127),
       (46, 'happiness', 128),
       (60, 'happiness', 129),
       (56, 'happiness', 130),
       (32, 'happiness', 131),
       (15, 'happiness', 132),
       (78, 'happiness', 133),
       (3, 'happiness', 134),
       (63, 'happiness', 135),
       (28, 'happiness', 136),
       (86, 'happiness', 137),
       (76, 'happiness', 138),
       (55, 'happiness', 139),
       (97, 'happiness', 140),
       (53, 'happiness', 141),
       (87, 'happiness', 142),
       (34, 'happiness', 143),
       (57, 'happiness', 144),
       (77, 'happiness', 145),
       (37, 'happiness', 146),
       (6, 'happiness', 147),
       (86, 'happiness', 148),
       (72, 'happiness', 149),
       (38, 'happiness', 150),
       (60, 'happiness', 151),
       (100, 'happiness', 152),
       (63, 'happiness', 153),
       (10, 'happiness', 154),
       (52, 'happiness', 155),
       (3, 'happiness', 156),
       (81, 'happiness', 157),
       (57, 'happiness', 158),
       (59, 'happiness', 159),
       (37, 'happiness', 160),
       (88, 'happiness', 161),
       (23, 'happiness', 162),
       (14, 'happiness', 163),
       (16, 'happiness', 164),
       (74, 'happiness', 165),
       (44, 'happiness', 166),
       (82, 'happiness', 167),
       (71, 'happiness', 168),
       (51, 'happiness', 169),
       (87, 'happiness', 170),
       (32, 'happiness', 171),
       (94, 'happiness', 172),
       (95, 'happiness', 173),
       (39, 'happiness', 174),
       (90, 'happiness', 175),
       (88, 'happiness', 176),
       (83, 'happiness', 177),
       (47, 'happiness', 178),
       (82, 'happiness', 179),
       (22, 'happiness', 180),
       (9, 'happiness', 181),
       (7, 'happiness', 182),
       (54, 'happiness', 183),
       (17, 'happiness', 184),
       (90, 'happiness', 185),
       (10, 'happiness', 186),
       (39, 'happiness', 187),
       (20, 'happiness', 188),
       (65, 'happiness', 189),
       (97, 'happiness', 190),
       (13, 'happiness', 191),
       (28, 'happiness', 192),
       (22, 'happiness', 193),
       (47, 'happiness', 194),
       (5, 'happiness', 195),
       (30, 'happiness', 196),
       (25, 'happiness', 197),
       (61, 'happiness', 198),
       (69, 'happiness', 199),
       (9, 'happiness', 200),
       (32, 'happiness', 201),
       (67, 'happiness', 202),
       (79, 'happiness', 203),
       (12, 'happiness', 204),
       (72, 'happiness', 205),
       (75, 'happiness', 206),
       (97, 'happiness', 207),
       (43, 'happiness', 208),
       (80, 'happiness', 209),
       (71, 'happiness', 210),
       (21, 'happiness', 211),
       (66, 'happiness', 212),
       (56, 'happiness', 213),
       (51, 'happiness', 214),
       (76, 'happiness', 215),
       (28, 'happiness', 216),
       (46, 'happiness', 217),
       (71, 'happiness', 218),
       (10, 'happiness', 219),
       (8, 'happiness', 220),
       (45, 'happiness', 221),
       (11, 'happiness', 222),
       (99, 'happiness', 223),
       (87, 'happiness', 224),
       (69, 'happiness', 225),
       (39, 'happiness', 226),
       (40, 'happiness', 227),
       (19, 'happiness', 228),
       (60, 'happiness', 229),
       (46, 'happiness', 230),
       (13, 'happiness', 231),
       (72, 'happiness', 232),
       (63, 'happiness', 233),
       (81, 'happiness', 234),
       (5, 'happiness', 235),
       (88, 'happiness', 236),
       (48, 'happiness', 237),
       (14, 'happiness', 238),
       (70, 'happiness', 239),
       (48, 'happiness', 240),
       (29, 'happiness', 241),
       (92, 'happiness', 242),
       (9, 'happiness', 243),
       (3, 'happiness', 244),
       (92, 'happiness', 245),
       (12, 'happiness', 246),
       (40, 'happiness', 247),
       (18, 'happiness', 248),
       (81, 'happiness', 249),
       (14, 'happiness', 250),
       (75, 'happiness', 251),
       (21, 'happiness', 252),
       (80, 'happiness', 253),
       (56, 'happiness', 254),
       (61, 'happiness', 255),
       (34, 'happiness', 256),
       (79, 'happiness', 257),
       (94, 'happiness', 258),
       (5, 'happiness', 259),
       (100, 'happiness', 260),
       (71, 'happiness', 261),
       (51, 'happiness', 262),
       (53, 'happiness', 263),
       (79, 'happiness', 264),
       (93, 'happiness', 265),
       (66, 'happiness', 266),
       (82, 'happiness', 267),
       (23, 'happiness', 268),
       (38, 'happiness', 269),
       (11, 'happiness', 270),
       (51, 'happiness', 271),
       (49, 'happiness', 272),
       (75, 'happiness', 273),
       (23, 'happiness', 274),
       (97, 'happiness', 275),
       (16, 'happiness', 276),
       (70, 'happiness', 277),
       (83, 'happiness', 278),
       (67, 'happiness', 279),
       (29, 'happiness', 280),
       (99, 'happiness', 281),
       (18, 'happiness', 282),
       (73, 'happiness', 283),
       (31, 'happiness', 284),
       (79, 'happiness', 285),
       (97, 'happiness', 286),
       (54, 'happiness', 287),
       (86, 'happiness', 288),
       (99, 'happiness', 289),
       (100, 'happiness', 290),
       (27, 'happiness', 291),
       (72, 'happiness', 292),
       (8, 'happiness', 293),
       (4, 'happiness', 294),
       (78, 'happiness', 295),
       (5, 'happiness', 296),
       (26, 'happiness', 297),
       (42, 'happiness', 298),
       (32, 'happiness', 299),
       (98, 'happiness', 300),
       (67, 'happiness', 301),
       (97, 'happiness', 302),
       (59, 'happiness', 303),
       (3, 'happiness', 304),
       (61, 'happiness', 305),
       (38, 'happiness', 306),
       (39, 'happiness', 307),
       (56, 'happiness', 308),
       (57, 'happiness', 309),
       (68, 'happiness', 310),
       (19, 'happiness', 311),
       (76, 'happiness', 312),
       (29, 'happiness', 313),
       (91, 'happiness', 314),
       (60, 'happiness', 315),
       (91, 'happiness', 316),
       (4, 'happiness', 317),
       (61, 'happiness', 318),
       (44, 'happiness', 319),
       (9, 'happiness', 320),
       (32, 'happiness', 321),
       (3, 'happiness', 322),
       (54, 'happiness', 323),
       (92, 'happiness', 324),
       (57, 'happiness', 325),
       (80, 'happiness', 326),
       (70, 'happiness', 327),
       (25, 'happiness', 328),
       (22, 'happiness', 329),
       (11, 'happiness', 330),
       (50, 'happiness', 331),
       (8, 'happiness', 332),
       (32, 'happiness', 333),
       (81, 'happiness', 334),
       (23, 'happiness', 335),
       (49, 'happiness', 336),
       (96, 'happiness', 337),
       (93, 'happiness', 338),
       (89, 'happiness', 339),
       (62, 'happiness', 340),
       (50, 'happiness', 341),
       (88, 'happiness', 342),
       (82, 'happiness', 343),
       (39, 'happiness', 344),
       (68, 'happiness', 345),
       (98, 'happiness', 346),
       (2, 'happiness', 347),
       (96, 'happiness', 348),
       (56, 'happiness', 349),
       (75, 'happiness', 350),
       (68, 'happiness', 351),
       (3, 'happiness', 352),
       (40, 'happiness', 353),
       (59, 'happiness', 354),
       (5, 'happiness', 355),
       (56, 'happiness', 356),
       (3, 'happiness', 357),
       (77, 'happiness', 358),
       (43, 'happiness', 359),
       (56, 'happiness', 360),
       (3, 'happiness', 361),
       (22, 'happiness', 362),
       (32, 'happiness', 363),
       (21, 'happiness', 364),
       (10, 'happiness', 365),
       (20, 'happiness', 366),
       (74, 'happiness', 367),
       (55, 'happiness', 368),
       (29, 'happiness', 369),
       (8, 'happiness', 370),
       (8, 'happiness', 371),
       (66, 'happiness', 372),
       (70, 'happiness', 373),
       (91, 'happiness', 374),
       (50, 'happiness', 375),
       (18, 'happiness', 376),
       (21, 'happiness', 377),
       (62, 'happiness', 378),
       (23, 'happiness', 379),
       (91, 'happiness', 380),
       (42, 'happiness', 381),
       (92, 'happiness', 382),
       (78, 'happiness', 383),
       (5, 'happiness', 384),
       (53, 'happiness', 385),
       (64, 'happiness', 386),
       (87, 'happiness', 387),
       (29, 'happiness', 388),
       (44, 'happiness', 389),
       (36, 'happiness', 390),
       (49, 'happiness', 391),
       (48, 'happiness', 392),
       (99, 'happiness', 393),
       (17, 'happiness', 394),
       (64, 'happiness', 395),
       (59, 'happiness', 396),
       (62, 'happiness', 397),
       (77, 'happiness', 398),
       (35, 'happiness', 399),
       (37, 'happiness', 400),
       (59, 'happiness', 401),
       (26, 'happiness', 402),
       (5, 'happiness', 403),
       (77, 'happiness', 404),
       (27, 'happiness', 405),
       (16, 'happiness', 406),
       (58, 'happiness', 407),
       (77, 'happiness', 408),
       (85, 'happiness', 409),
       (45, 'happiness', 410),
       (39, 'happiness', 411),
       (78, 'happiness', 412),
       (98, 'happiness', 413),
       (71, 'happiness', 414),
       (50, 'happiness', 415),
       (33, 'happiness', 416),
       (29, 'happiness', 417),
       (50, 'happiness', 418),
       (4, 'happiness', 419),
       (71, 'happiness', 420),
       (8, 'happiness', 421),
       (53, 'happiness', 422),
       (65, 'happiness', 423),
       (63, 'happiness', 424),
       (4, 'happiness', 425),
       (48, 'happiness', 426),
       (93, 'happiness', 427),
       (26, 'happiness', 428),
       (10, 'happiness', 429),
       (52, 'happiness', 430),
       (59, 'happiness', 431),
       (48, 'happiness', 432),
       (61, 'happiness', 433),
       (56, 'happiness', 434),
       (86, 'happiness', 435),
       (29, 'happiness', 436),
       (57, 'happiness', 437),
       (39, 'happiness', 438),
       (13, 'happiness', 439),
       (64, 'happiness', 440),
       (42, 'happiness', 441),
       (11, 'happiness', 442),
       (61, 'happiness', 443),
       (89, 'happiness', 444),
       (12, 'happiness', 445),
       (48, 'happiness', 446),
       (73, 'happiness', 447),
       (23, 'happiness', 448),
       (99, 'happiness', 449),
       (56, 'happiness', 450),
       (17, 'happiness', 451),
       (26, 'happiness', 452),
       (22, 'happiness', 453),
       (66, 'happiness', 454),
       (49, 'happiness', 455),
       (23, 'happiness', 456),
       (65, 'happiness', 457),
       (68, 'happiness', 458),
       (66, 'happiness', 459),
       (16, 'happiness', 460),
       (69, 'happiness', 461),
       (75, 'happiness', 462),
       (64, 'happiness', 463),
       (59, 'happiness', 464),
       (59, 'happiness', 465),
       (85, 'happiness', 466),
       (65, 'happiness', 467),
       (11, 'happiness', 468),
       (44, 'happiness', 469),
       (98, 'happiness', 470),
       (79, 'happiness', 471),
       (85, 'happiness', 472),
       (89, 'happiness', 473),
       (46, 'happiness', 474),
       (77, 'happiness', 475),
       (30, 'happiness', 476),
       (91, 'happiness', 477),
       (71, 'happiness', 478),
       (21, 'happiness', 479),
       (36, 'happiness', 480),
       (94, 'happiness', 481),
       (83, 'happiness', 482),
       (6, 'happiness', 483),
       (82, 'happiness', 484),
       (71, 'happiness', 485),
       (15, 'happiness', 486),
       (70, 'happiness', 487),
       (39, 'happiness', 488),
       (92, 'happiness', 489),
       (6, 'happiness', 490),
       (48, 'happiness', 491),
       (4, 'happiness', 492),
       (89, 'happiness', 493),
       (93, 'happiness', 494),
       (36, 'happiness', 495),
       (91, 'happiness', 496),
       (81, 'happiness', 497),
       (60, 'happiness', 498),
       (42, 'happiness', 499),
       (77, 'happiness', 500),
       (7, 'happiness', 501),
       (91, 'happiness', 502),
       (60, 'happiness', 503),
       (81, 'happiness', 504),
       (83, 'happiness', 505),
       (75, 'happiness', 506),
       (2, 'training', 1),
       (3, 'training', 2),
       (5, 'training', 3),
       (6, 'training', 4),
       (3, 'training', 5),
       (4, 'training', 6),
       (8, 'training', 7),
       (5, 'training', 8),
       (4, 'training', 9),
       (9, 'training', 10),
       (7, 'training', 11),
       (7, 'training', 12),
       (3, 'training', 13),
       (9, 'training', 14),
       (6, 'training', 15),
       (4, 'training', 16),
       (5, 'training', 17),
       (9, 'training', 18),
       (4, 'training', 19),
       (4, 'training', 20),
       (0, 'training', 21),
       (1, 'training', 22),
       (6, 'training', 23),
       (5, 'training', 24),
       (4, 'training', 25),
       (4, 'training', 26),
       (8, 'training', 27),
       (6, 'training', 28),
       (5, 'training', 29),
       (5, 'training', 30),
       (5, 'training', 31),
       (33, 'training', 32),
       (35, 'training', 33),
       (18, 'training', 34),
       (28, 'training', 35),
       (13, 'training', 36),
       (20, 'training', 37),
       (35, 'training', 38),
       (37, 'training', 39),
       (16, 'training', 40),
       (17, 'training', 41),
       (39, 'training', 42),
       (12, 'training', 43),
       (18, 'training', 44),
       (29, 'training', 45),
       (19, 'training', 46),
       (17, 'training', 47),
       (39, 'training', 48),
       (37, 'training', 49),
       (22, 'training', 50),
       (17, 'training', 51),
       (19, 'training', 52),
       (33, 'training', 53),
       (17, 'training', 54),
       (15, 'training', 55),
       (27, 'training', 56),
       (40, 'training', 57),
       (38, 'training', 58),
       (38, 'training', 59),
       (27, 'training', 60),
       (22, 'training', 61),
       (17, 'training', 62),
       (12, 'training', 63),
       (24, 'training', 64),
       (31, 'training', 65),
       (35, 'training', 66),
       (12, 'training', 67),
       (18, 'training', 68),
       (21, 'training', 69),
       (30, 'training', 70),
       (14, 'training', 71),
       (38, 'training', 72),
       (23, 'training', 73),
       (19, 'training', 74),
       (31, 'training', 75),
       (40, 'training', 76),
       (16, 'training', 77),
       (12, 'training', 78),
       (25, 'training', 79),
       (34, 'training', 80),
       (13, 'training', 81),
       (36, 'training', 82),
       (16, 'training', 83),
       (16, 'training', 84),
       (35, 'training', 85),
       (19, 'training', 86),
       (15, 'training', 87),
       (16, 'training', 88),
       (37, 'training', 89),
       (26, 'training', 90),
       (16, 'training', 91),
       (32, 'training', 92),
       (30, 'training', 93),
       (23, 'training', 94),
       (24, 'training', 95),
       (20, 'training', 96),
       (16, 'training', 97),
       (26, 'training', 98),
       (37, 'training', 99),
       (11, 'training', 100),
       (32, 'training', 101),
       (13, 'training', 102),
       (16, 'training', 103),
       (37, 'training', 104),
       (19, 'training', 105),
       (21, 'training', 106),
       (13, 'training', 107),
       (38, 'training', 108),
       (13, 'training', 109),
       (22, 'training', 110),
       (37, 'training', 111),
       (39, 'training', 112),
       (39, 'training', 113),
       (23, 'training', 114),
       (38, 'training', 115),
       (18, 'training', 116),
       (21, 'training', 117),
       (14, 'training', 118),
       (29, 'training', 119),
       (27, 'training', 120),
       (37, 'training', 121),
       (18, 'training', 122),
       (36, 'training', 123),
       (33, 'training', 124),
       (13, 'training', 125),
       (21, 'training', 126),
       (30, 'training', 127),
       (11, 'training', 128),
       (38, 'training', 129),
       (38, 'training', 130),
       (39, 'training', 131),
       (17, 'training', 132),
       (25, 'training', 133),
       (16, 'training', 134),
       (20, 'training', 135),
       (19, 'training', 136),
       (25, 'training', 137),
       (28, 'training', 138),
       (33, 'training', 139),
       (24, 'training', 140),
       (27, 'training', 141),
       (72, 'training', 142),
       (62, 'training', 143),
       (43, 'training', 144),
       (75, 'training', 145),
       (61, 'training', 146),
       (63, 'training', 147),
       (43, 'training', 148),
       (56, 'training', 149),
       (43, 'training', 150),
       (63, 'training', 151),
       (59, 'training', 152),
       (80, 'training', 153),
       (60, 'training', 154),
       (65, 'training', 155),
       (77, 'training', 156),
       (59, 'training', 157),
       (65, 'training', 158),
       (77, 'training', 159),
       (57, 'training', 160),
       (70, 'training', 161),
       (44, 'training', 162),
       (46, 'training', 163),
       (74, 'training', 164),
       (65, 'training', 165),
       (70, 'training', 166),
       (80, 'training', 167),
       (49, 'training', 168),
       (55, 'training', 169),
       (68, 'training', 170),
       (66, 'training', 171),
       (61, 'training', 172),
       (75, 'training', 173),
       (44, 'training', 174),
       (62, 'training', 175),
       (52, 'training', 176),
       (79, 'training', 177),
       (70, 'training', 178),
       (63, 'training', 179),
       (78, 'training', 180),
       (66, 'training', 181),
       (46, 'training', 182),
       (74, 'training', 183),
       (59, 'training', 184),
       (52, 'training', 185),
       (55, 'training', 186),
       (71, 'training', 187),
       (53, 'training', 188),
       (76, 'training', 189),
       (75, 'training', 190),
       (64, 'training', 191),
       (68, 'training', 192),
       (51, 'training', 193),
       (61, 'training', 194),
       (47, 'training', 195),
       (67, 'training', 196),
       (65, 'training', 197),
       (69, 'training', 198),
       (66, 'training', 199),
       (67, 'training', 200),
       (70, 'training', 201),
       (62, 'training', 202),
       (44, 'training', 203),
       (41, 'training', 204),
       (57, 'training', 205),
       (53, 'training', 206),
       (68, 'training', 207),
       (43, 'training', 208),
       (68, 'training', 209),
       (75, 'training', 210),
       (52, 'training', 211),
       (76, 'training', 212),
       (42, 'training', 213),
       (54, 'training', 214),
       (70, 'training', 215),
       (71, 'training', 216),
       (60, 'training', 217),
       (46, 'training', 218),
       (75, 'training', 219),
       (57, 'training', 220),
       (75, 'training', 221),
       (73, 'training', 222),
       (44, 'training', 223),
       (73, 'training', 224),
       (77, 'training', 225),
       (69, 'training', 226),
       (51, 'training', 227),
       (57, 'training', 228),
       (51, 'training', 229),
       (57, 'training', 230),
       (62, 'training', 231),
       (59, 'training', 232),
       (52, 'training', 233),
       (50, 'training', 234),
       (67, 'training', 235),
       (79, 'training', 236),
       (56, 'training', 237),
       (59, 'training', 238),
       (42, 'training', 239),
       (66, 'training', 240),
       (44, 'training', 241),
       (70, 'training', 242),
       (70, 'training', 243),
       (74, 'training', 244),
       (67, 'training', 245),
       (45, 'training', 246),
       (52, 'training', 247),
       (55, 'training', 248),
       (79, 'training', 249),
       (69, 'training', 250),
       (60, 'training', 251),
       (56, 'training', 252),
       (78, 'training', 253),
       (71, 'training', 254),
       (76, 'training', 255),
       (77, 'training', 256),
       (51, 'training', 257),
       (69, 'training', 258),
       (51, 'training', 259),
       (66, 'training', 260),
       (55, 'training', 261),
       (61, 'training', 262),
       (74, 'training', 263),
       (63, 'training', 264),
       (69, 'training', 265),
       (66, 'training', 266),
       (78, 'training', 267),
       (54, 'training', 268),
       (49, 'training', 269),
       (42, 'training', 270),
       (60, 'training', 271),
       (71, 'training', 272),
       (73, 'training', 273),
       (42, 'training', 274),
       (51, 'training', 275),
       (64, 'training', 276),
       (45, 'training', 277),
       (75, 'training', 278),
       (43, 'training', 279),
       (53, 'training', 280),
       (71, 'training', 281),
       (59, 'training', 282),
       (72, 'training', 283),
       (54, 'training', 284),
       (43, 'training', 285),
       (62, 'training', 286),
       (43, 'training', 287),
       (69, 'training', 288),
       (50, 'training', 289),
       (52, 'training', 290),
       (58, 'training', 291),
       (59, 'training', 292),
       (52, 'training', 293),
       (73, 'training', 294),
       (72, 'training', 295),
       (77, 'training', 296),
       (64, 'training', 297),
       (46, 'training', 298),
       (49, 'training', 299),
       (59, 'training', 300),
       (46, 'training', 301),
       (55, 'training', 302),
       (66, 'training', 303),
       (52, 'training', 304),
       (63, 'training', 305),
       (44, 'training', 306),
       (61, 'training', 307),
       (54, 'training', 308),
       (43, 'training', 309),
       (62, 'training', 310),
       (77, 'training', 311),
       (72, 'training', 312),
       (59, 'training', 313),
       (49, 'training', 314),
       (61, 'training', 315),
       (57, 'training', 316),
       (41, 'training', 317),
       (48, 'training', 318),
       (46, 'training', 319),
       (69, 'training', 320),
       (71, 'training', 321),
       (79, 'training', 322),
       (47, 'training', 323),
       (69, 'training', 324),
       (49, 'training', 325),
       (46, 'training', 326),
       (69, 'training', 327),
       (72, 'training', 328),
       (59, 'training', 329),
       (71, 'training', 330),
       (70, 'training', 331),
       (57, 'training', 332),
       (50, 'training', 333),
       (61, 'training', 334),
       (57, 'training', 335),
       (62, 'training', 336),
       (64, 'training', 337),
       (62, 'training', 338),
       (62, 'training', 339),
       (59, 'training', 340),
       (56, 'training', 341),
       (68, 'training', 342),
       (52, 'training', 343),
       (65, 'training', 344),
       (74, 'training', 345),
       (48, 'training', 346),
       (61, 'training', 347),
       (56, 'training', 348),
       (46, 'training', 349),
       (51, 'training', 350),
       (58, 'training', 351),
       (41, 'training', 352),
       (43, 'training', 353),
       (55, 'training', 354),
       (44, 'training', 355),
       (72, 'training', 356),
       (51, 'training', 357),
       (72, 'training', 358),
       (63, 'training', 359),
       (65, 'training', 360),
       (76, 'training', 361),
       (69, 'training', 362),
       (74, 'training', 363),
       (44, 'training', 364),
       (55, 'training', 365),
       (49, 'training', 366),
       (57, 'training', 367),
       (67, 'training', 368),
       (69, 'training', 369),
       (67, 'training', 370),
       (61, 'training', 371),
       (66, 'training', 372),
       (98, 'training', 373),
       (89, 'training', 374),
       (93, 'training', 375),
       (85, 'training', 376),
       (90, 'training', 377),
       (88, 'training', 378),
       (97, 'training', 379),
       (95, 'training', 380),
       (94, 'training', 381),
       (87, 'training', 382),
       (97, 'training', 383),
       (91, 'training', 384),
       (89, 'training', 385),
       (99, 'training', 386),
       (98, 'training', 387),
       (99, 'training', 388),
       (82, 'training', 389),
       (89, 'training', 390),
       (92, 'training', 391),
       (100, 'training', 392),
       (94, 'training', 393),
       (88, 'training', 394),
       (88, 'training', 395),
       (94, 'training', 396),
       (92, 'training', 397),
       (95, 'training', 398),
       (96, 'training', 399),
       (89, 'training', 400),
       (95, 'training', 401),
       (86, 'training', 402),
       (92, 'training', 403),
       (93, 'training', 404),
       (83, 'training', 405),
       (89, 'training', 406),
       (91, 'training', 407),
       (84, 'training', 408),
       (96, 'training', 409),
       (89, 'training', 410),
       (99, 'training', 411),
       (81, 'training', 412),
       (87, 'training', 413),
       (97, 'training', 414),
       (82, 'training', 415),
       (87, 'training', 416),
       (84, 'training', 417),
       (95, 'training', 418),
       (94, 'training', 419),
       (96, 'training', 420),
       (88, 'training', 421),
       (95, 'training', 422),
       (82, 'training', 423),
       (98, 'training', 424),
       (99, 'training', 425),
       (91, 'training', 426),
       (86, 'training', 427),
       (88, 'training', 428),
       (82, 'training', 429),
       (82, 'training', 430),
       (98, 'training', 431),
       (96, 'training', 432),
       (91, 'training', 433),
       (94, 'training', 434),
       (100, 'training', 435),
       (99, 'training', 436),
       (85, 'training', 437),
       (100, 'training', 438),
       (92, 'training', 439),
       (91, 'training', 440),
       (100, 'training', 441),
       (97, 'training', 442),
       (99, 'training', 443),
       (90, 'training', 444),
       (95, 'training', 445),
       (83, 'training', 446),
       (94, 'training', 447),
       (93, 'training', 448),
       (84, 'training', 449),
       (90, 'training', 450),
       (95, 'training', 451),
       (89, 'training', 452),
       (83, 'training', 453),
       (95, 'training', 454),
       (95, 'training', 455),
       (93, 'training', 456),
       (88, 'training', 457),
       (82, 'training', 458),
       (88, 'training', 459),
       (81, 'training', 460),
       (85, 'training', 461),
       (84, 'training', 462),
       (83, 'training', 463),
       (93, 'training', 464),
       (87, 'training', 465),
       (88, 'training', 466),
       (88, 'training', 467),
       (89, 'training', 468),
       (86, 'training', 469),
       (96, 'training', 470),
       (90, 'training', 471),
       (98, 'training', 472),
       (84, 'training', 473),
       (91, 'training', 474),
       (87, 'training', 475),
       (83, 'training', 476),
       (98, 'training', 477),
       (96, 'training', 478),
       (99, 'training', 479),
       (87, 'training', 480),
       (83, 'training', 481),
       (89, 'training', 482),
       (98, 'training', 483),
       (95, 'training', 484),
       (83, 'training', 485),
       (82, 'training', 486),
       (88, 'training', 487),
       (91, 'training', 488),
       (98, 'training', 489),
       (99, 'training', 490),
       (86, 'training', 491),
       (82, 'training', 492),
       (82, 'training', 493),
       (94, 'training', 494),
       (90, 'training', 495),
       (94, 'training', 496),
       (88, 'training', 497),
       (92, 'training', 498),
       (88, 'training', 499),
       (86, 'training', 500),
       (95, 'training', 501),
       (98, 'training', 502),
       (86, 'training', 503),
       (94, 'training', 504),
       (84, 'training', 505),
       (95, 'training', 506);
