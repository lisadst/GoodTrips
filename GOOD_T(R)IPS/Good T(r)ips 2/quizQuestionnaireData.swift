//
//  quizQuestionnaire.swift
//  CarlaKroft
//
//  Created by apprenant75 on 28/01/2025.
//

import Foundation

struct QuizQuestionnaireData {
    var question : String
    var answer : [String]
}
var answers1 = ["Un week-end","1 semaine","15 jours","1 mois"]
var answers2 = ["Printemps","Été","Automne","Hiver"]

var question1 = QuizQuestionnaireData(
    question: "Dans ce cas, combien de temps comptez vous\n explorer?",
    answer: answers1
)

var question2 = QuizQuestionnaireData(
    question: "Durant quelle saison?",
    answer: answers2
)

var questions = [ question1, question2]
