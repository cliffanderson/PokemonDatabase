# Find all trainers who have given gifts
QUERY1="use project; select trianers.name, pokemon.name from trianers inner join trades on trianers.trainerid = trades.trainerfrom inner join pokemon on trades.pokemon1 = pokemon.pokedex_num where trades.pokemon2 is null;"
echo "All trainers who have given gifts"
echo $QUERY1 | mysql

# Find someone's team
QUERY2="use project; select pokemon.name from pokemon inner join catches on pokedex_num = catches.pokemon inner join trianers on trianers.trainerID = catches.trainer where trianers.name = 'Cliff Anderson';"
echo
echo
echo "Cliff's team"
echo $QUERY2 | mysql
