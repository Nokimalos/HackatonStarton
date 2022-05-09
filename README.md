# :mortar_board: Hackaton_Starton
## :trophy: Goal of the Hackaton
:heavy_check_mark: Realiser un projet qui vise à aider et à construire un avenir décentralisé.

## French Persona

Aujourd'hui, l'utilisation de la __blockchain__ se développe dans de très nombreux domaines : finance, santé, art..., mais il peut être compliqué de l’appréhender et de l'utiliser.

Très intéressés par le domaine de la blockchain et du web3, qui offre des possibilitées nouvelles, qui vont bien au-delà de notre imagination et des possibles, __Burn Spirit__, une société composée d'étudiant dans l'IT a relevé le défi de réaliser un projet qui vise à nous projeter et accélérer la transition du web2 au web3, pour un avenir __décentralisé__.

--------------------------------------------------------------------------------------------------------------------------------------------------

## Contextualisation

>Notre idée est portée sur un sujet d'actualité récent : le __vote__. :envelope_with_arrow:

Le vote suscite plusieurs problématiques à notre époque : __Falsification__ :x:, __Écologie__ :recycle:, __Abstention__ :put_litter_in_its_place:. Le but de notre projet est donc de __remédier__ à ces problèmes :

__L'écologie__ :recycle:<br />
Nous sommes convaincus que la blockchain est la solution qui permettrai d'y parvenir, car en votant de cette manière, cela permettrai dans un premier temps de gaspiller moins de papier utilisé pour inscrire le nom des candidats. Cette problématique écologique est d'autant plus importante à notre époque concernant ce qui se passe climatiquement.

__La falsification__ :x:<br />
Dans un second temps, le vote décentralisé nous permet de garantir une élection non truqué, grâce au principe de fonctionnement de la blockchain. Cela garantirai une élection sûr et transparente notamment dans certains gouvernement.

__L'abstention__ :put_litter_in_its_place:<br />
Enfin, le vote "classique", suscite un problème majeur concernant le taux d'absention, desfois par conviction ou plus couramment par soucis de fainéantise. Imaginons que vous soyez occupées à une affaire le dimanche, ou bien qu'il fasse beau, que vous n'ayez donc pas le temps de vous déplacer au bureau de vote ou de faire une procuration. C'est typyquement concreteme nt ce qu'il s'est passé pour certains d'entre nous.

Le vote décentralisé serait donc une solution respectant l'anonymat des votants, écologiquement correcte pour répondre aux problématiques que rencontre le vote traditionnel.

C'est pour cela que nous avons décidé de créer une application mobile :iphone:, qui permet aux Français de voir le programme électoral de chaque candidat, de voter et de voir les résultats de l'élection.

--------------------------------------------------------------------------------------------------------------------------------------------------

## Workflow

Pour créer notre application, nous avons utilisé Flutter.

L'identifiaction a notre application se fait via France Connect, la solution proposée par l'État pour sécuriser et simplifier la connexion à plus de 1000 services en ligne (demande de passeport, carte nationale d'identité...).

:warning: Pour etre claire, France connect nous permet seulement de savoir si un utilisateur est bien francais et si il a déjà voté ou non. C'est les seuls données qui vont etre stockées avec son nom son prénom et son numéro de sécutié sociale.

Afin d'accomplir notre tâche, nous avons deployé un Smart contrat, qui donne un accès direct à une blockchain qui permettra aux citoyens de pouvoir voter pour un candidat. Le smart contract est un logiciel qui ne dispose en tant que tel d'aucune autorité juridique, ainsi, le lien avec le blockchain était une idée primordiale.

Les plus grands défis technique que nous avons rencontrés sont le Smart contract, car il nous impose l'apprentissage d'une nouvelle technologique, qui est Solidity, ainsi que relier cela à Meta Mask.

Pour pallier à cela, nous avons solicité l'aide de l'équipe de Starton, ainsi que diviser le travail entre les différents membres du groupe.

Pour préciser l'aspect décentralisé, en aucuns cas des données de l'utilsateur concernant la blockchain, son vote, le smart contract ou son wallet vont etre stockées, traitées ou analysées par notre back end, france connect ou quoi que ca soit.

Pour une meilleur compréhension, je vous invite grandement à visioner cette petite [vidéo explicative](https://drive.google.com/file/d/1fkmYWmISnj8Vsye0-JDEE5oHbVOu1w8p/view) :play_or_pause_button: que Valentin à réalisé, pour bien souligner que notre solution est entièrement __décentralisé__.

C'est pour toute ces raisons que la solution que nous proposons est à 100% décentralisé et respecte le principe d'anonyma du votant.

--------------------------------------------------------------------------------------------------------------------------------------------------

## Steps

➡️ __Etape 1__:
L'utilisateur peux utiliser l'application sans etre connecté pour regarder le programme des candidats ou regarder les resultats

➡️ __Etape 2__:
Il va cliqué sur l'onglet "vote", va choisir un candidat pour lequel voté puis va venir s'identifier avec France connect pour savoir si il a déjà voté et si il est bien francais (Toute interaction avec le back-end ou les bases de données s'arrentent ici)

➡️ __Etape 3__:
L'utilisateur va etre confronté a une authentification biometrique (face ID) pour s'assurer qu'aucunes usurpation n'est possible

➡️ __Etape 4__:
Il va ensuite s'authentifié sur meta mask avec l'OAuth 2.0 pour que l'on puisse envoyer son wallet et son vote au smart contract

➡️ __Etape 5__:
Il valide son vote et la transaction va etre executé par le smart contract, le vote de l'utilisateur est bien public sur la blockchain

➡️ __Etape 5__:
Par la suite nous récuperons seulement la réponse du smart contract que nous enregistrons, c'est un champ booléan qui nous indique si oui (1) l'utilisateur a voté ou non (0)

Voici une [démo](https://drive.google.com/file/d/17a8oHl-GusAtjVyHCH2KupmGyg_hsRli/view) :play_or_pause_button: pour mettre des images sur ces mots

--------------------------------------------------------------------------------------------------------------------------------------------------

## Built With

* [Flutter](https://docs.flutter.dev/)
* [Solidity](https://docs.soliditylang.org/en/v0.8.13/)
* [Starton](https://www.starton.io/)

--------------------------------------------------------------------------------------------------------------------------------------------------

## Installation :arrow_down:
### Go to [SETUP.md](https://github.com/Nokimalos/HackatonStarton/blob/main/SETUP.md)

--------------------------------------------------------------------------------------------------------------------------------------------------

## License

Distribué sous licence MIT, voir [``` LICENSE ```](https://github.com/Nokimalos/HackatonStarton/blob/main/LICENSE) pour plus d'informations.

--------------------------------------------------------------------------------------------------------------------------------------------------

## Contacts

Kaan Bouldoires kaan.bouldoires@epitech.eu

Mohammed Chihi mohammed.chihi@epitech.eu

Valentin Fouillet valentin.fouillet@epitech.eu

Illyas Chihi illyas.chihi@epitech.eu

Antoine Gavira-Bottari antoine.gavira-bottari@epitech.eu

Thomas Willson thomas.willson@epitech.eu
