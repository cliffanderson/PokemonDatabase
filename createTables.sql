use project;
/* Create Scripts for database final project*/
create table Evolutions
(
StartPokemon int(6) references Pokemon(PokeDex_num),
EndPokemon int(6) references Pokemon(PokeDex_num),
EvolutionLevel int(2),
EvolutionTrade varchar(10),
EvolutionItem varchar(20)
);


create table Pokemon
(
PokemonID int(6) primary key auto_increment,
PokeDex_num int(4),
Name varchar(12),
Weight float(4,2),
Height float(4,2),
Weakness varchar(20),
Resistance varchar(20),
Immunitie varchar(128),
PKLevel int(2),
Type1 varchar(20),
Type2 varchar(20),
BaseAttack int (4),
BaseHealth int (4),
Move1ID int(6) references Moves(MoveID),
Move2ID int(6) references Moves(MoveID),
Move3ID int(6) references Moves(MoveID),
Move4ID int(6) references Moves(MoveID),
RegionID int(6) references Regions(RegionID)

);

create table Trades
(
TradeID int(6) primary key auto_increment,
TrainerFrom int(6) references Trainers(TrainerID),
TrainerTo int(6) references Trainers(TrainerID),
Pokemon1 int(6) references Pokemon(PokemonID),
Pokemon2 int(6) references Pokemon(PokemonID),
DOT Date
);

create table Trianers
(
TrainerID int(6) primary key auto_increment,
Name varchar(20),
Age int(3),
NumberOfBadges int(3), 
Hometown varchar(20)
);


create table Regions
(
RegionID int(6) primary key,
Name varchar(20)
);

create table Catches
(
Trainer int(6) references Trainers(TrainerID),
Pokemon int(6) references Pokemon(PokemonID),
Region int(6) references Regions(RegionID)
);


create table Moves
(
MoveID int(6) primary key,
Name varchar(20),
Type varchar(20),
Base int (3),
Accuracy int(3),
PowerPoints int(3)
);
