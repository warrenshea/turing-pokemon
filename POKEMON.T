include "OTHERS.T"
include "BATTLES.T"
include "BATTLES2.T"
var PokemonS, TrainerS : string
var OutcomeB, Outcome2B, Outcome3B, Outcome4B : boolean := false
var Level : int := 0
% setscreen ("graphics:mcga")
setscreen("graphics:svga")
colorback (7)
WELCOME
loop
    TrainerS := TRAINER
    PokemonS := POKEMON
    BEFORELV1 (TrainerS, PokemonS)
    Level := 1
    PRELV (Level, PokemonS)
    OutcomeB := BATTLE1 (PokemonS)
    exit when OutcomeB = false
    Level := 2
    PRELV (Level, PokemonS)
    Outcome2B := BATTLE2 (PokemonS)
    exit when Outcome2B = false
    Level := 3
    PRELV (Level, PokemonS)
    Outcome3B := BATTLE3 (PokemonS)
    exit when Outcome3B = false
    EVOLVE (PokemonS)
    Level := 4
    PRELV (Level, PokemonS)
    Outcome4B := BATTLE4 (PokemonS)
    exit
end loop
OUTCOME (Outcome4B)
