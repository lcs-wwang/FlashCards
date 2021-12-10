//
//  Card.swift
//  FlashCards
//
//  Created by Winston Wang on 2021-12-10.
//

import Foundation

//define the informations we'll track for a card.
//"Blieprint" for a card
//We make card conform to the Equatable protocol
struct card: Equatable{
    let question: String
    let answer: String
}

//define a list of cards to quiz with
let listOfCards = [
    card(question: "What is the \"powerhouse\" of a cell?",
     answer: "Mitochondria")
    ,
    card(question: "What is hydrolisis?",
     answer: "When water has broken away from a cell")
    ,
    card(question: "What is CH_2?",
     answer: "Methylene")
    ,
    card(question: "What must we do at the start of a sentence",
     answer: "Capitalize the first letter")
    ,
    card(question: "What is thew \"powerhouse\" of a cell",
     answer: "mitochondria")
    ,
    
]
