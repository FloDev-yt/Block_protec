# Block protec

![icon](https://github.com/FloDev-yt/Block_protec/raw/assets/icon.png)

Ce datapack pour Java Edition donne la possibilité à n'importe quel joueur de fabriquer un nouveau bloc appelé : *Block protec lv1* qui protégera un carré de 11x11x11 centré sur ce bloc. Ce bloc pourra être amélioré afin d'étendre sa zone de protection. Dans cette zone, il est impossible pour les joueurs non autorisés de casser ou de poser des blocs, de blesser les entités passives ou d'ouvrir les contenaires.

A noter que ce datapack ne nécessite **aucun Resource pack**


## Le Craft

![Craft](https://github.com/FloDev-yt/Block_protec/raw/assets/Craft_block_protec.png)

Ce craft vous donne ce bloc : ![Block protect lv1](https://github.com/FloDev-yt/Block_protec/raw/assets/Block_protec_lv1.png) qui est le bloc de protection de niveau 1.

## Zone de protection

Le bloc de protection comprend 5 niveaux ou Levels.

|   | Carré de protection (vue de dessus) | Hauteur de protection |
| --- | --- | --- |
| Level_1 | ![Top level 1](https://github.com/FloDev-yt/Block_protec/raw/assets/top_lv1.png) | ![Side level 1](https://github.com/FloDev-yt/Block_protec/raw/assets/side_lv1.png) |
| Level 2 | ![Top level 2](https://github.com/FloDev-yt/Block_protec/raw/assets/top_lv2.png) | ![Side infini](https://github.com/FloDev-yt/Block_protec/raw/assets/side_infini.png) |
| Level 3 | ![Top level 3](https://github.com/FloDev-yt/Block_protec/raw/assets/top_lv3.png) | ![Side infini](https://github.com/FloDev-yt/Block_protec/raw/assets/side_infini.png) |
| Level 4 | ![Top level 4](https://github.com/FloDev-yt/Block_protec/raw/assets/top_lv4.png) | ![Side infini](https://github.com/FloDev-yt/Block_protec/raw/assets/side_infini.png) |
| Level 5 | ![Top level 5](https://github.com/FloDev-yt/Block_protec/raw/assets/top_lv5.png) | ![Side infini](https://github.com/FloDev-yt/Block_protec/raw/assets/side_infini.png) |

## Level up

Pour faire évoluer votre bloc de protection vers le niveau suivant, il faut avoir dans son inventaire le bon nombre de diamants. Puis il vous faudra vous rendre à la page 3 du Livre Menu (accessible avec un clic droit sur le bloc de protection) et choisir l'action : [ Faire évoluer ]

Par defaut :
|| Coût |
|:---------------|:---------------:|
| du level 1 au level 2 : | 5 <img src="https://static.wikia.nocookie.net/thetekkit/images/9/90/Diamond_%28Gem%29.png/revision/latest?cb=20121011092534" width="30" height="30" /> |
| du level 2 au level 3 : | 26 <img src="https://static.wikia.nocookie.net/thetekkit/images/9/90/Diamond_%28Gem%29.png/revision/latest?cb=20121011092534" width="30" height="30" /> |
| du level 3 au level 4 : | 64 <img src="https://static.wikia.nocookie.net/thetekkit/images/9/90/Diamond_%28Gem%29.png/revision/latest?cb=20121011092534" width="30" height="30" /> |
| du level 4 au level 5 : | 128 <img src="https://static.wikia.nocookie.net/thetekkit/images/9/90/Diamond_%28Gem%29.png/revision/latest?cb=20121011092534" width="30" height="30" /> |

Les coûts pour passer au niveau suivant sont paramétrables pour les administrateurs à l'aide des commandes suivantes :

`/scoreboard players set .#level_2 bp_diamond 5`

`/scoreboard players set .#level_3 bp_diamond 26`

`/scoreboard players set .#level_4 bp_diamond 64`

`/scoreboard players set .#level_5 bp_diamond 128`


## Protection

Limite visuelle de la zone de protection : 

<img src="https://github.com/FloDev-yt/Block_protec/raw/assets/bordure.png" width="300" height="300"/>

- Un joueur non autorisé passe en mode Aventure (gamemode 3) dès qu'il se trouve à moins de 13 blocs d'une zone protégée (appelée la Zone intermédiaire), ce qui l'empêche de poser ou casser des blocs.
- Le PvP est désactivé.
- La TNT (activé), les minecarts TNT et les cristaux de l'Ender sont instantanément supprimés.
- Toutes les entités passives sont protégées ([*Liste des entités protégées](https://github.com/FloDev-yt/Block_protec/blob/MC-1.19_FR/Block_Protec_datapack/data/block_protec/tags/entity_types/entity_protec.json)).
- Les entités protégées ne peuvent pas subir de dégâts de projectiles dans une zone protégée.
- Les joueurs non autorisés ne peuvent pas lancer de potions qui infligent des malus.

## Zone intermédiaire

Il s'agit d'une zone de 13 blocs après la limite de protection (limite visuelle), quelle que soit le niveau du bloc de protection. Il est possible depuis l'extérieur de cette zone de détruire des blocs dans la zone intermédiaire par différents moyens : la portée d'un joueur pour cassé des blocs, la TNT, les pistons, etc. Par conséquent, les blocs dans cette zone ne sont pas protégés à 100%.

Dans cette zone :
- Les pistons sont détruits afin d'éviter les attaques par machines volantes.
- La TNT (activé), les minecarts TNT, les cristaux de l'Ender ainsi que les œufs de poules sont instantanément supprimés.

Exemple :

![Zone intermédiaire](https://github.com/FloDev-yt/Block_protec/raw/assets/middel_zone.png)

Ici, les deux blocs de protection ont pu être posés par deux joueurs différents car c'est la distance la plus courte entre deux zones appartenant à des propriétaires différents. Dans le cas de zones intermédiaires qui se chevauchent et dont les blocs de protection appartiennent à des propriétaires différents, aucun joueur ne pourra placer ou casser de blocs une fois entré dans cette zone de chevauchement.

## Les extensions

Par défaut, un bloc posé est un bloc principal, visible sous la forme d'une table d'enchantement. Les extensions sont plus petites et se forment automatiquement dès qu'un bloc de protection dont vous êtes le propriétaire et dont les limites de protection se touchent. Les joueurs ajoutés comme membres dans votre zone sont également ajoutés à vos extensions.

Exemple :

![Zone intermédiaire](https://github.com/FloDev-yt/Block_protec/raw/assets/extensions.png)


## Administration

Lorsque vous êtes en mode créatif, vous avez tous les droits sur n'importe quel bloc de protection. Vous pouvez récupérer le menu livre pour exécuter n'importe quelle action comme si vous étiez le propriétaire.

## Limites

Le nombre maximum de blocs de protection et d'extensions est limité par défaut :
- 5 blocs de protection principaux
- 7 extensions par joueur

Cette limite globale à tous les joueurs peut être modifiée par un administrateur à l'aide de deux commandes :
- `/scoreboard players set .#default bp_maxMainArea 5` 
pour les blocs principaux
- `/scoreboard players set .#default bp_maxExtArea 7` pour les extensions

L'administrateur peut également créer des limites pour des joueurs spécifiques, et ces limites auront priorité sur les limites par défaut.

Exemple :

`/scoreboard players set Dinnerbone bp_maxMainArea -1` permet de ne définir aucune limite dans le nombre total de blocs principaux uniquement pour le joueur Dinnerbone.

## Téléchargement

- [**Téléchargement pour Minecraft 1.19.x et 1.20.x**](https://github.com/FloDev-yt/Block_protec/releases/download/v0.2/Block_protec_MC-1.19_FR_v0.2.zip)

- [**Téléchargement pour Minecraft 1.18.x**](https://github.com/FloDev-yt/Block_protec/releases/download/v0.2/Block_protec_MC-1.18_FR_v0.2.zip)


## Installation

[*Tutoriels/Installer un pack de données*](https://minecraft.fandom.com/fr/wiki/Tutoriels/Installer_un_pack_de_données)

Si vous utilisez ce Datapack sur un serveur, vous devez activer les commandes block dans les options du serveur. Dans le fichier *server.properties*, modifiez la ligne suivante :

`enable-command-block=true`

## Un mot sur moi

Passionné par Minecraft depuis le tout début, j'ai toujours trouvé qu'il manquait un petit quelque chose pour améliorer la partie multijoueur, et j'essaie de l'ajouter à travers mes développements et Datapack.

**Liens utiles :**
- [Mon Tipee](https://fr.tipeee.com/flo-dev)
- [Mes autres développements](https://github.com/FloDev-yt?tab=repositories)

Vous pouvez aussi m'écrire à cette adresse mail : [flo.dev.yt@gmail.com](flo.dev.yt@gmail.com) pour me faire part d'un problème ou d'une remarque quelconque.