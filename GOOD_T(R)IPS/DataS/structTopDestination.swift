//
//  structTopDestination.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 28/01/2025.
//

import Foundation

struct destinationTop: Identifiable{
    var id = UUID()
    var name: String
    var photo: String
    var description:String
    var likeIcon: String
}

var destinations: [destinationTop] = [destinationTop(name: "Mexique", photo: "Mexique", description:"Capitale du Yucatán, Mérida est surnommée « la ville blanche » en raison de ses bâtiments coloniaux aux façades éclatantes. Son centre historique regorge de places animées, de marchés colorés et de vestiges mayas. Proche de sites archéologiques comme Uxmal et de cénotes cristallins, Mérida est une porte d’entrée vers une culture fascinante.", likeIcon:"heart"),
                                      destinationTop(name: "Londres", photo: "Londres", description:"Capitale du Royaume-Uni, Londres est une métropole où l’ancien côtoie le moderne. Des monuments emblématiques comme Big Ben, Buckingham Palace et la Tour de Londres aux quartiers branchés de Shoreditch et Camden, chaque coin de rue raconte une histoire. Avec ses innombrables musées gratuits, ses parcs verdoyants et sa scène gastronomique cosmopolite, Londres est une ville où l’on ne s’ennuie jamais.", likeIcon:"heart"),
                                      destinationTop(name: "NewYork", photo: "NewYork", description:"New York est une mégapole où tout semble possible. De Times Square à Central Park, en passant par Brooklyn et Harlem, chaque quartier a sa propre identité. Entre ses musées de renommée mondiale, sa gastronomie cosmopolite et son rythme effréné, la ville fascine et captive les voyageurs du monde entier.", likeIcon:"heart"),
                                      destinationTop(name: "Tokyo", photo: "Tokyo", description:"Tokyo est une ville dynamique qui juxtapose gratte-ciels futuristes et temples historiques. Les quartiers de Shibuya et Shinjuku vibrent d'énergie avec leurs néons et centres commerciaux, tandis qu'Asakusa offre une plongée dans le Japon traditionnel avec le temple Senso-ji. La cuisine locale, des sushis frais aux ramen savoureux, est un délice pour les papilles. Les jardins paisibles, comme le parc Ueno, offrent une évasion tranquille au cœur de la ville. Tokyo est une destination incontournable pour 2024, offrant une immersion profonde dans la culture japonaise.", likeIcon:"heart"),
                                      destinationTop(name: "Laos", photo: "Laos", description:"Ancienne capitale royale du Laos, Luang Prabang est classée au patrimoine mondial de l’UNESCO. Ses temples bouddhistes scintillants, son architecture coloniale et son ambiance paisible en font un joyau d’Asie du Sud-Est. Entourée par le Mékong et la rivière Nam Khan, elle offre des paysages époustouflants et une immersion dans la culture laotienne.", likeIcon:"heart"),
                                      destinationTop(name: "Chili", photo: "Chili", description:"Valparaíso est une ville portuaire chilienne célèbre pour ses maisons aux couleurs vives perchées sur des collines escarpées. Les funiculaires historiques facilitent l'exploration de ses ruelles pavées ornées de fresques murales impressionnantes. Le quartier de Cerro Alegre est particulièrement apprécié pour ses cafés bohèmes et ses galeries d'art. Le port animé offre une vue imprenable sur l'océan Pacifique, et la cuisine locale, notamment les fruits de mer frais, est un régal pour les visiteurs. En 2024, Valparaíso est une destination tendance pour les amateurs d'art et de culture.", likeIcon:"heart"),
                                      destinationTop(name: "Canada", photo: "Canada", description:"Situé au cœur des Rocheuses canadiennes, le parc national de Banff est réputé pour ses paysages époustouflants. Le lac Louise, avec ses eaux d'un bleu saisissant, est entouré de sommets enneigés, offrant des vues à couper le souffle. Les sentiers de randonnée serpentent à travers des forêts denses, menant à des points de vue panoramiques. En hiver, la région se transforme en un paradis pour les skieurs et snowboarders. La faune locale, incluant des ours, des orignaux et des cerfs, ajoute une touche sauvage à cette destination pittoresque.", likeIcon:"heart"),
                                      destinationTop(name: "Italie", photo: "Italie", description: "Matera, située dans la région de la Basilicate, est célèbre pour ses 'Sassi', des habitations creusées dans la roche calcaire. Ces structures anciennes, certaines datant de la préhistoire, forment un labyrinthe de ruelles étroites et d'escaliers sinueux. La ville a été désignée Capitale européenne de la culture en 2019, mettant en lumière son patrimoine unique. Les églises rupestres ornées de fresques byzantines et les musées locaux offrent un aperçu fascinant de l'histoire de la région. Les restaurants locaux servent des plats traditionnels italiens, faisant de Matera une destination incontournable pour les amateurs d'histoire et de gastronomie.", likeIcon: "heart"),
                                      destinationTop(name: "Vietnam", photo: "Vietnam", description: "Sapa, située dans les montagnes du nord du Vietnam, est réputée pour ses paysages de rizières en terrasses verdoyantes sculptées sur les flancs des collines. La région est habitée par diverses minorités ethniques, notamment les Hmong et les Dao, offrant une riche mosaïque culturelle. Les marchés locaux sont colorés et vibrants, où les habitants vendent des produits artisanaux et des textiles traditionnels. Les sentiers de randonnée traversent des villages pittoresques, des cascades et des vallées brumeuses, offrant des vues panoramiques à chaque tournant. Sapa est une destination idéale pour ceux qui cherchent à combiner aventure et découverte culturelle.", likeIcon: "heart"),
                                      destinationTop(name: "Costa \n Rica", photo: "Costa Rica", description: "Alajuela, située près de la capitale San José, est le point de départ idéal pour explorer certaines des attractions naturelles les plus emblématiques du Costa Rica. Le volcan Poás, avec l'un des plus grands cratères actifs au monde, offre des panoramas impressionnants et des sentiers de randonnée à travers des forêts nuageuses. La région est également connue pour ses plantations de café, où les visiteurs peuvent en apprendre davantage sur le processus de production et déguster des breuvages fraîchement préparés. Les réserves naturelles environnantes abritent une biodiversité incroyable, incluant des paresseux, des toucans et des grenouilles colorées. Alajuela combine parfaitement aventure et détente dans un cadre tropical.", likeIcon: "heart"),
                                      destinationTop(name: "Géorgie", photo: "Tbilissi", description: "Tbilissi, nichée dans une vallée le long de la rivière Koura, est un véritable mélange de cultures, marquée par ses influences perses, ottomanes et soviétiques. La vieille ville, avec ses balcons en bois sculpté et ses ruelles pavées, contraste avec les gratte-ciels modernes et les structures futuristes comme le Pont de la Paix. La cuisine géorgienne, avec ses khinkalis (raviolis farcis) et son khachapuri (pain au fromage), fait de chaque repas une expérience inoubliable.", likeIcon: "heart"),
                                      destinationTop(name: "Oman", photo: "Oman", description: "Oman est l’un des trésors cachés de la péninsule arabique. Son paysage diversifié, allant des dunes du désert du Wahiba Sands aux fjords du Musandam, offre une nature spectaculaire. Mascate, la capitale, mélange modernité et traditions, tandis que les forts anciens témoignent d’une histoire riche et fascinante.", likeIcon: "heart")]


class DestinationFavorite: ObservableObject{
    @Published var favoris: [destinationTop]
    
    init(favoris: [destinationTop] = []) {
        self.favoris = favoris
    }
}


var favoris = DestinationFavorite()

