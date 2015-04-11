# Crowdfunder seed data
 
puts 'Deleting any existing data...'
[Image, Description, List, City].each { |model| model.destroy_all }
 
puts 'Adding data...'
saoPaulo = City.create(
                  name: 'São Paulo',
                  image_url: "http://bustravelbrasil.com/wp-content/uploads/Sao-Paulo-bridge.jpg")

coxinhas = saoPaulo.lists.create(name: 'Best Coxinhas', nome: 'Melhores coxinhas', image_url:"http://rasktravel.com/wp-content/uploads/Coxinha.jpg")

veloso = coxinhas.descriptions.create(name: 'Veloso Bar', 
							subtitle: 'Enjoy with no hurries.',
							subtitulo: 'Para aproveitar sem nenhuma pressa.', 
							address: 'Rua Conceição Veloso, 54, Vila Mariana, São Paulo', 
							detalhe: "o bar que fica na Vila Mariana, além de contar com uma porção de
									coxinhas que só pode ser descrita como perfeição, também conta com drinques e outras 
									porções deliciosas. Apesar de sempre cheio, quem já frequentou o lugar, sabe que toda 
									espera vale a pena para apreciar estas coxinhas sem nenhuma pressa.",
							detail: 'The bar, located in Vila Mariana, beyond having coxinhas which can
									only be described as perfection, also counts with drinks and others delicious entries. 
									Besides being very crowded, the wait is worth it, when the matter is appreciating this 
									delicious coxinhas with no hurry.', 
							priceRange: 4)

frango = coxinhas.descriptions.create(name: 'Frangó', 
							subtitle: 'Porque a coxinha precisa de Frangó',
							subtitulo: 'Because coxinhas need "Frangó"(chicken).',  
							address: 'Largo da Matriz de Nossa Senhora do Ó, 168 - Freguesia Do Ó - São Paulo', 
							detalhe: "Aberto desde 1987, o tradicional bar, oferece além das maravilhosas
									coxinhas, o bar também conta com uma imensa carta de cervejas importadas e oferece 
									inclusive combinações para degustação.", 
							detail: 'Opened since 1987, the traditional bar offers, besides the wonderful
									coxinhas, a huge menu of imported beers and degustation combinations.',
							priceRange: 5)

pdrBrasileira = coxinhas.descriptions.create(name: 'Padaria Brasileira', 
							subtitle: 'A palavra é variedade.',
							subtitulo: 'The word is “variety”',  
							address: 'Rua Augusta, 1592 - Consolação - São Paulo – SP', 
							detalhe: "Tradicional, a franquia premiada no ABC possuí um único ponto em
									São Paulo, que fica na Augusta. A coxinha responsável por grande da fama da padaria, é 
									servida em diversos sabores, que vão desde o tradicional frango até sabores mais 
									inesperados como carne louca e pernil.", 
							detail: 'Traditional, the awarded franchise in smaller cities in the metropolitan

region of São Paulo, is present in only one location in the city, which stays in Augusta 

street. The coxinha, responsible for a big part of the fame of the bakery, is served ia wide 

variety of flavours, which goes from the traditional chicken flavour to others more exotic 

such as ham.',
							priceRange: 5)

attimo = coxinhas.descriptions.create(name: 'Attimo Restaurante', 
							subtitle: 'Coxinha Italiana.',
							subtitulo: 'Italian Coxinhas.',  
							address: 'Rua Diogo Jácome, 341 - Vila Nova Conceição, São Paulo - SP', 
							detalhe: "O restaurante, especializado na culinária italiana, também possuí um
									bar e é lá que estão localizadas estas coxinhas, que apesar de não serem o grande 
									destaque do local, não devem nunca passar despercebidas.", 
							detail: 'The restaurant, specialized in italian kitchen, also has a bar, and it is

the there where you can find the coxinhas, which is not the place is specialty, should never 

be underestimated.',
							priceRange: 3)

original = coxinhas.descriptions.create(name: 'Bar Original', 
							subtitle: 'Todo tipo de coxinha',
							subtitulo: 'Every kind of coxinhas.',  
							address: 'Rua Diogo Jácome, 341 - Vila Nova Conceição, São Paulo - SP', 
							detalhe: "Especializado em choppes, o bar também conta com coxinhas de
									sabores extremamente exóticos e merecedores de elogios, como bobó de camarão, 
									rabada e joelho de porco.", 
							detail: 'Specialized in beers, the bar also counts with coxinhas of extremely

exotic and praiseworthy flavours, such as shrimp and pork knee.',
							priceRange: 4)


burgers = saoPaulo.lists.create(name: 'Best Burgers', nome: 'Melhores hamburgueres', image_url:"http://www.mcdonalds.ca/content/dam/Canada/en/Promo/blt/img/burger.png")

meats = burgers.descriptions.create(name: 'Meats', 
							subtitle: 'Novo é sempre bom.',
							subtitulo: 'New is always good.',  
							address: 'Rua dos Pinheiros,320 – Pinheiros, São Paulo', 
							detalhe: "A hamburgueria inaugurada em 2012 tem chamado atenção e é praticamente 
									unanimidade nas listas de melhores hamburgueres de São Paulo. Além do hamburguer genial, a 
									casa também conta com cervejas especiais, e sobremesas variadas, deixando o cardápio amplo e 
									variado.", 
							detail: 'The burger place, which opened in 2012 has been calling attention and it is

practically an unanimity between the lists of the best burgers in São Paulo. Besides the genius 

burger, the place also has special beers and a variety of desserts, making the menu wider and with 

lots of options.',
							priceRange: 5)

louis = burgers.descriptions.create(name: 'St. Louis Classic Burguers', 
							subtitle: 'Pequeno lugar, grande hamburguer.', 
							subtitulo: 'Small Place, Great Burger.', 
							address: 'Rua Batatais, 242, Jardim Paulista, São Paulo, SP.', 
							detalhe: "Com cara americana, o St Louis Burger é pequeno e aconchegante, porém o
									mesmo não pode ser dito de suas principais opções de hamburguer. Com alternativas de 220g, a 
									opção de montar o próprio lanche, e uma carne sublime, o lugar com certeza merece a sua atenção.", 
							detail: 'With an american style, the St Louis Classic burgers is small and cosy, but, the

same cannot be said about its main options of burgers. With alternatives os 220g, the choice of 

building your own sandwich, and a sublime meat, this place definitely deserves your attention.',
							priceRange: 4)

zDeli = burgers.descriptions.create(name: 'Z Deli Sanduíches', 
							subtitle: 'Espera que vale.', 
							subtitulo: 'Worth the wait.', 
							address: 'Rua Conceição Veloso, 54, Vila Mariana, São Paulo', 
							detalhe: "Como o espaço do Z Deli não é muito grande (mesmo no segundo e maior
									endereço em Pinheiros), e a qualidade do seu hamburguer tem se tornado conhecida, a espera é 
									inevitável. Entretanto, a casa não deixa de ser recomendada por isso, e garantimos, o hamburguer 
									vale cada minuto na fila.", 
							detail: 'Because the space in the Z Deli Sandwich Shop is not very large (even in the

second and bigger address in the Pinheiros neighbourhood) and the quality of its burger has become 

widespread, the wait is inevitable. However even considering this, the place is still recommended, 

and we can guarantee, burger is worth every minute in the line.',
							priceRange: 5)

bistro = burgers.descriptions.create(name: '12 Burger & Bistro', 
							subtitle: 'Não só em hamburguerias', 
							subtitulo: 'Not only a burger place.', 
							address: 'Rua Simão Álvares, 1018 - Pinheiros', 
							detalhe: "Apesar do 12 Burger & Bistrô não ser uma hamburgueria própriamente dita, isso
									não o impede de aparecer nesta lista. Por sinal, o hamburguer é tão importante que o lugar até 
									mudou de nome (antigamente se chama Twelve Bistro). Além do hamburguer irretocável, o lugar 
									também oferece variedade de cervejas e diversas opções de entrada.", 
							detail: 'Besides the 12 Burger and Bistro not being a burger place, that doesnt stop it
from being good enough to appear on this list. By the way, the burger is so important that the place 
even changed its name (it was formerly called Twelve Bistro). Beyond the flawless the place also 
offers a variety of beers and a wide range of option for the entries.',
							priceRange: 4)

lanchonete = burgers.descriptions.create(name: 'Lanchonete da Cidade', 
							subtitle: 'Homenageando São Paulo', 
							subtitulo: 'Homage to the City', 
							address: 'Alameda Tietê, 110 – Jardins – São Paulo', 
							detalhe: "Saboreie essa cidade - é o que diz a Lanchonete, e com certeza eles ajudam a
									fazer isso. Com 5 lojas diferentes em São Paulo, e lanches exclusivos de algumas localidades, a 
									casa oferece diversas opções de hamburgueres (além de hot-dogs), alguns bem diferentes do 
									convencional, como o Lambreta.", 
							detail: '“Savour this city” is what the slogan of the Lanchonete says, and definitely they
help you do it. Present in 5 different places in São Palo, and exclusive sandwiches in some 
locations, the place offers options of burgers, some very exotic, like the Lambreta.',
							priceRange: 4)

veloso.images.create(image_url: '/seedImages/Imagens_Grande-coxinha/velosoBar.jpg')
frango.images.create(image_url: '/seedImages/Imagens_Grande-coxinha/a6456j7z-7688556136685442.jpg')
pdrBrasileira.images.create(image_url: '/seedImages/Imagens_Grande-coxinha/padaria-brasileira-coxinha-pernil.jpeg')
attimo.images.create(image_url: '/seedImages/Imagens_Grande-coxinha/attimo.jpg')
original.images.create(image_url: '/seedImages/Imagens_Grande-coxinha/BAROriginal.jpg')

veloso.images.create(image_url: '/seedImages/Imagens_icone-coxinha/veloso-bar.jpg')
frango.images.create(image_url: '/seedImages/Imagens_icone-coxinha/FRANGÓ.jpg')
pdrBrasileira.images.create(image_url: '/seedImages/Imagens_icone-coxinha/padaria-brasileira.jpeg')
attimo.images.create(image_url: '/seedImages/Imagens_icone-coxinha/attimo.jpg')
original.images.create(image_url: '/seedImages/Imagens_icone-coxinha/originalBar.jpg')

meats.images.create(image_url: '/seedImages/Imagens_Grande-burgers/meats.jpg')
louis.images.create(image_url: '/seedImages/Imagens_Grande-burgers/stLouis.jpg')
zDeli.images.create(image_url: '/seedImages/Imagens_Grande-burgers/ZDeli.jpeg')
bistro.images.create(image_url: '/seedImages/Imagens_Grande-burgers/twelveburgerandbistro.png')
lanchonete.images.create(image_url: '/seedImages/Imagens_Grande-burgers/LanchoneteDaCidade.jpg')

meats.images.create(image_url: '/seedImages/Imagens_icone-burgers/meats.png')
louis.images.create(image_url: '/seedImages/Imagens_icone-burgers/stlouis.jpg')
zDeli.images.create(image_url: '/seedImages/Imagens_icone-burgers/zdeli.jpeg')
bistro.images.create(image_url: '/seedImages/Imagens_icone-burgers/twelvebistro.jpg')
lanchonete.images.create(image_url: '/seedImages/Imagens_icone-burgers/lanchonetedacidade.jpg')

rio = City.create(
                  name: 'Rio de Janeiro', 
                  image_url: "http://global-conferences.eu/wp-content/uploads/2014/09/2_1.jpg")

feijoada = rio.lists.create(name: 'Best Feijoadas', nome:'Melhores Feijoadas', image_url:"http://myrestaurant.pt/sites/default/files/styles/restaurante-slide/public/imagens/especialidades/feijoada_0.jpeg")

barDoBeto = feijoada.descriptions.create(name: 'Bar do Beto', 
							subtitle: 'Tradicional ponto da boemia carioca.', 
							subtitulo: 'Traditional point of the carioca bohemia.', 
							address: 'Rua Farme de Amoedo, 51 Ipanema | Rio de Janeiro | RJ', 
							detalhe: "O bar tradicional, porém com um visual moderno, situado no Bairro de Ipanema,
									é um ponto obrigatório tanto para cariocas quanto para turistas que querem apreciar uma bela 
									feijoada.", 
							detail: 'It is a traditional bar, although nowadays it has a modern look. Located in the

Ipanema neighbourhood, it is a must go place if you want to enjoy a nice feijoada, whether you are 

a tourist or a natural.',
							priceRange: 4)

botequimInf = feijoada.descriptions.create(name: 'Botequim Informal', 
							subtitle: 'Informalidade sempre bem-vinda.', 
							subtitulo: 'Informality is always welcome.', 
							address: 'R. Domingos Ferreira, 215 Copacabana | Rio de Janeiro | RJ', 
							detalhe: "Além de ser famoso pelo seu chopp, o Botequim Informal também se destaca
									pela sua feijoada, que está, sem dúvida alguma, entre as melhores da cidade do Rio de Janeiro.", 
							detail: 'Besides being renowned by its beer, the Botequim Informal also is recognizable

by its feijoada, which is doubtless between the top ones in the city of Rio de Janeiro.',
							priceRange: 5)

cardosao = feijoada.descriptions.create(name: 'Armazém do Cardosão', 
							subtitle: 'Simplicidade e muita alegria.', 
							subtitulo: 'Simplicity and lots of joy.', 
							address: 'R. Cardoso Júnior 312, Laranjeiras, Rio de Janeiro, RJ', 
							detalhe: "De aparência simples, o lugar esconde uma clássica feijoada do Rio de Janeiro,
									além de muitas vezes contar com o samba de rua espontâneo feito pelos próprios frequentadores do 
									local, tem como ser mais carioca?", 
							detail: 'With a simple look, the place "hides" one of the classics feijoadas in Rio de

Janeiro, besides of counting many times with spontaneous street samba, played by the customers 

themselves.',
							priceRange: 3)

casaDaFeijoada = feijoada.descriptions.create(name: 'Casa da Feijoada', 
							subtitle: 'O nome diz tudo.', 
							subtitulo: 'The name says it all. (Feijoadas home)', 
							address: 'Rua Prudente de Morais, 10 - loja B Ipanema - Rio de Janeiro - RJ', 
							detalhe: "Um verdadeiro banquete para qualquer amante de feijoada. O lugar serve o prato
									com diversas opções de carnes e acompanhamentos, além de entradas e doces caseiros.", 
							detail: 'A true feast for any feijoada lover. The place offers it with a wide range of

options of meats and side dishes, besides entries and home made desserts.',
							priceRange: 4)

brasileirinho = feijoada.descriptions.create(name: 'Brasileirinho', 
							subtitle: 'Porque a feijoada é brasileira.', 
							subtitulo: 'Because feijoada is brazilian.', 
							address: 'Avenida Atlântica, 3654 - Copacabana, Rio de Janeiro - RJ', 
							detalhe: "Localizado na orla de Copacabana, o lugar serve todo o tipo de pratos típicos
										brasileiros, e é claro, não tem nada mais típico que a feijoada.", 
							detail: 'Located right on the edge of Copacabana beach, the place offers all kinds of

typical brazilian dishes, and of course, there is nothing more typical than feijoada.',
							priceRange: 4)

barDoBeto.images.create(image_url: '/seedImages/Imagens_Grandes-feijoada/BarDoBeto.jpg')
botequimInf.images.create(image_url: '/seedImages/Imagens_Grandes-feijoada/botequimInformal.jpg')
cardosao.images.create(image_url: '/seedImages/Imagens_Grandes-feijoada/cardosao.jpg')
casaDaFeijoada.images.create(image_url: '/seedImages/Imagens_Grandes-feijoada/casaDaFeijoada.jpg')
brasileirinho.images.create(image_url: '/seedImages/Imagens_Grandes-feijoada/brasileirinho.jpg')

barDoBeto.images.create(image_url: '/seedImages/Imagens_icone-feijoada/bardobetoicone.jpg')
botequimInf.images.create(image_url: '/seedImages/Imagens_icone-feijoada/botequiminformal.jpg')
cardosao.images.create(image_url: '/seedImages/Imagens_icone-feijoada/armazemdocardosao.jpg')
casaDaFeijoada.images.create(image_url: '/seedImages/Imagens_icone-feijoada/casadafeijoada.jpg')
brasileirinho.images.create(image_url: '/seedImages/Imagens_icone-feijoada/brasileirinho.jpg')

