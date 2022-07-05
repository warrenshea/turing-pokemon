proc BLASTOISE
    var mypic :int := Pic.FileNew ("blast.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end BLASTOISE

proc CHARIZARD
    var mypic :int := Pic.FileNew ("chari.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end CHARIZARD

proc CHARMANDER
    var mypic :int := Pic.FileNew ("charm.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end CHARMANDER

proc GEODUDE
    var mypic :int := Pic.FileNew ("geo.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end GEODUDE

proc MEWTWO
    var mypic :int := Pic.FileNew ("mew.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end MEWTWO

proc ODDISH
    var mypic :int := Pic.FileNew ("odd.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end ODDISH

proc PIKACHU
    var mypic :int := Pic.FileNew ("pika.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end PIKACHU

proc RAICHU
    var mypic :int := Pic.FileNew ("rai.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end RAICHU

proc SQUIRTLE
    var mypic :int := Pic.FileNew ("squir.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end SQUIRTLE

proc STARMIE
    var mypic :int := Pic.FileNew ("star.jpg") 
    Pic.Draw (mypic, 10, 210, 0) 
end STARMIE

proc LV1
    var mypic :int := Pic.FileNew ("star.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end LV1

proc LV2
    var mypic :int := Pic.FileNew ("odd.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end LV2

proc LV3
    var mypic :int := Pic.FileNew ("geo.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end LV3

proc LV4
    var mypic :int := Pic.FileNew ("mew.jpg") 
    Pic.Draw (mypic, 10, 210, 0)
end LV4

proc PIKAEVOLVE
    PIKACHU
    delay (1500)
    RAICHU
    delay (300)
    PIKACHU
    delay (800)
    RAICHU
    delay (800)
    PIKACHU
    delay (300)
    RAICHU
end PIKAEVOLVE

proc CHAREVOLVE
    CHARMANDER
    delay (1500)
    CHARIZARD
    delay (300)
    CHARMANDER
    delay (800)
    CHARIZARD
    delay (800)
    CHARMANDER
    delay (300)
    CHARIZARD
end CHAREVOLVE

proc BLASTEVOLVE
    SQUIRTLE
    delay (1500)
    BLASTOISE
    delay (300)
    SQUIRTLE
    delay (800)
    BLASTOISE
    delay (800)
    SQUIRTLE
    delay (300)
    BLASTOISE
end BLASTEVOLVE

function TRAINER : string
    var TrainerS : string (1)
    var Check : boolean
    loop
	cls
	locate (16, 1)
	var mypic :int := Pic.FileNew ("trainer.jpg") 
	Pic.Draw (mypic, 0, 0, 0)         
	colour (12)
	put "1. Ash"
	locate (17, 1)
	colour (11)
	put "2. Misty"
	locate (18, 1)
	colour (10)
	put "Choose your Pokemon Trainer: " ..
	getch (TrainerS)
	if TrainerS = "1" or TrainerS = "2" then
	    Check := true
	else
	    locate (19, 1)
	    colour (15)
	    put "Invalid Answer, Try again"
	    delay (1500)
	    Check := false
	end if
	exit when Check = true
    end loop
    result TrainerS
end TRAINER

function POKEMON : string
    var PokemonS : string (1)
    var Check : boolean
    loop
	cls
	locate (16, 1)
	var mypic :int := Pic.FileNew ("pokemon.jpg") 
	Pic.Draw (mypic, 0, 0, 0)     
	colour (14)
	put "1. Pikachu"
	locate (17, 1)
	colour (12)
	put "2. Charmander"
	locate (18, 1)
	colour (11)
	put "3. Squirtle"
	locate (19, 1)
	colour (10)
	put "Choose your Pokemon: " ..
	getch (PokemonS)
	if PokemonS = "1" or PokemonS = "2" or PokemonS = "3" then
	    Check := true
	else
	    locate (20, 1)
	    colour (15)
	    put "Invalid Answer, Try again"
	    delay (1500)
	    Check := false
	end if
	exit when Check = true
    end loop
    result PokemonS
end POKEMON

proc GAMEPLAY (PokemonS : string)
    if PokemonS = "1" then
	PIKACHU
    elsif PokemonS = "2" then
	CHARMANDER
    elsif PokemonS = "3" then
	SQUIRTLE
    end if
end GAMEPLAY

proc GAMEPLAY2 (PokemonS : string)
    if PokemonS = "1" then
	RAICHU
    elsif PokemonS = "2" then
	CHARIZARD
    elsif PokemonS = "3" then
	BLASTOISE
    end if
end GAMEPLAY2

procedure BEFORELV1 (TrainerS, PokemonS : string)
    var a : string (1)
    loop
	cls
	locate (1, 1)
	if TrainerS = "1" then
	    colour (15)
	    put "You are " ..
	    colour (12)
	    put "ASH " ..
	    colour (15)
	    put "and you have a " ..
	elsif TrainerS = "2" then
	    colour (15)
	    put "You are " ..
	    colour (11)
	    put "MISTY " ..
	    colour (15)
	    put "and you have a " ..
	end if
	if PokemonS = "1" then
	    colour (14)
	    put "PIKACHU"
	    locate (3, 12)
	    colour (14)
	    put "PIKACHU " ..
	    colour (15)
	    put "has: "
	    locate (4, 12)
	    put "Quick Attack"
	    locate (5, 12)
	    put "Thunder"
	elsif PokemonS = "2" then
	    colour (12)
	    put "CHARMANDER"
	    locate (3, 12)
	    colour (12)
	    put "CHARMANDER " ..
	    colour (15)
	    put "has: "
	    locate (4, 12)
	    put "Scratch"
	    locate (5, 12)
	    put "Ember"
	elsif PokemonS = "3" then
	    colour (11)
	    put "SQUIRTLE"
	    locate (3, 12)
	    colour (11)
	    put "SQUIRTLE " ..
	    colour (15)
	    put "has: "
	    locate (4, 12)
	    put "Headbutt"
	    locate (5, 12)
	    put "Water Gun"
	end if
	locate (7, 1)
	colour (15)
	put "Press " ..
	colour (13)
	put "ANY " ..
	colour (15)
	put "key to begin your battle !!"
	getch (a)
	exit
    end loop
end BEFORELV1

proc PRELV (Level : int, PokemonS : string)
    var a : string (1)
    loop
	cls
	colour (15)
	if Level = 1 then
	    LV1
	    locate (14, 14)
	    put "LEVEL 1"
	elsif Level = 2 then
	    LV2
	    locate (14, 14)
	    put "LEVEL 2"
	elsif Level = 3 then
	    LV3
	    locate (14, 14)
	    put "LEVEL 3"
	elsif Level = 4 then
	    LV4
	    locate (14, 14)
	    put "LEVEL 4"
	end if
	locate (15, 1)
	colour (15)
	put "Your battle is " ..
	if Level >= 1 and Level <= 3 then
	    if PokemonS = "1" then
		colour (14)
		put "PIKACHU " ..
	    elsif PokemonS = "2" then
		colour (12)
		put "CHARMANDER " ..
	    elsif PokemonS = "3" then
		colour (11)
		put "SQUIRTLE " ..
	    end if
	else
	    if PokemonS = "1" then
		colour (14)
		put "RAICHU " ..
	    elsif PokemonS = "2" then
		colour (12)
		put "CHARIZARD " ..
	    elsif PokemonS = "3" then
		colour (11)
		put "BLASTOISE " ..
	    end if
	end if
	colour (15)
	put "VS " ..
	if Level = 1 then
	    colour (11)
	    put "STARMIE"
	    locate (17, 12)
	    colour (11)
	    put "STARMIE " ..
	    colour (15)
	    put "has: "
	    locate (18, 12)
	    put "Tackle"
	    locate (19, 12)
	    put "Water Gun"
	elsif Level = 2 then
	    colour (2)
	    put "ODDISH"
	    locate (17, 12)
	    colour (2)
	    put "ODDISH " ..
	    colour (15)
	    put "has: "
	    locate (18, 12)
	    put "Tackle"
	    locate (19, 12)
	    put "Sleep Powder"
	elsif Level = 3 then
	    colour (6)
	    put "GEODUDE"
	    locate (17, 12)
	    colour (6)
	    put "GEODUDE " ..
	    colour (15)
	    put "has: "
	    locate (18, 12)
	    put "Tackle"
	    locate (19, 12)
	    put "Rock Throw"
	elsif Level = 4 then
	    colour (5)
	    put "MEWTWO"
	    locate (17, 12)
	    colour (5)
	    put "MEWTWO " ..
	    colour (15)
	    put "has: "
	    locate (18, 12)
	    put "Psychic"
	    locate (19, 12)
	    put "Confusion"
	    locate (20, 12)
	    put "Pound"
	end if
	locate (22, 1)
	colour (15)
	put "Press " ..
	colour (13)
	put "ANY " ..
	colour (15)
	put "key to begin your battle !!" ..
	getch (a)
	exit
    end loop
end PRELV

proc EVOLVE (PokemonS : string)
    var a : string (1)
    loop
	cls
	if PokemonS = "1" then
	    PIKAEVOLVE
	    delay (1500)
	    locate (15, 1)
	    colour (14)
	    put "PIKACHU " ..
	    colour (15)
	    put "has evolved into " ..
	    colour (14)
	    put "RAICHU"
	    locate (18, 1)
	    colour (14)
	    put "RAICHU " ..
	    colour (15)
	    put "has learned: Electric Storm"
	elsif PokemonS = "2" then
	    CHAREVOLVE
	    delay (1500)
	    locate (15, 1)
	    colour (12)
	    put "CHARMANDER " ..
	    colour (15)
	    put "has evolved into " ..
	    colour (12)
	    put "CHARIZARD"
	    locate (18, 1)
	    colour (12)
	    put "CHARIZARD " ..
	    colour (15)
	    put "has learned: Fire Spin"
	elsif PokemonS = "3" then
	    BLASTEVOLVE
	    delay (1500)
	    locate (15, 1)
	    colour (11)
	    put "SQUIRTLE " ..
	    colour (15)
	    put "has evolved into " ..
	    colour (11)
	    put "BLASTOISE"
	    locate (18, 1)
	    colour (11)
	    put "BLASTOISE " ..
	    colour (15)
	    put "has learned: Hydro Pump"
	end if
	locate (21, 1)
	colour (15)
	put "Press " ..
	colour (13)
	put "ANY " ..
	colour (15)
	put "key to begin your battle !!"
	getch (a)
	exit
    end loop
end EVOLVE

proc WIN
    cls
    var mypic :int := Pic.FileNew ("win.jpg") 
    Pic.Draw (mypic, 0, 0, 0)
    delay (3000)
    locate (22, 1)
end WIN

proc LOSE
    cls
    var mypic :int := Pic.FileNew ("lose.jpg") 
    Pic.Draw (mypic, 0, 0, 0)
    delay (3000)
    locate (22, 1)
end LOSE

proc WELCOME
  var mypic :int := Pic.FileNew ("title.jpg") 
  Pic.Draw (mypic, 0, 0, 0) 
  delay (5000)
  cls
end WELCOME

proc OUTCOME (Outcome4B : boolean)
    if Outcome4B = true then
	WIN
    else
	LOSE
    end if
end OUTCOME
