recipe give @s block_protec:block_protec_lv1

tellraw @s ["",{"text":"\n"},{"text":"Bravo vous avez débloqué la recette du Block de protection","bold":true,"color":"dark_green"},{"text":"\n"},{"text":"le Data pack : "},{"text":"Block_protec","underlined":true,"color":"dark_aqua"},{"text":" rajoute la posibilité de crafter un block de protection qui une fois posé définie une zone qui protéger contre toutes les destructions des joueurs qui ne sont pas membre de votre zone"}]

function block_protec:message/recipe

tellraw @s ["",{"text":"Commande utilie :","underlined":true},{"text":" /trigger help_blockProtec","color":"gold","clickEvent":{"action":"run_command","value":"/trigger help_blockProtec"},"hoverEvent":{"action":"show_text","contents":{"text":"Affiche l'aide (à tout moment)"}}},{"text":"\n"}]