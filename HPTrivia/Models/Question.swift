//
//  Question.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 26/06/25.
//

struct Question: Decodable {
    let id: Int
    let question: String
    let answer: String
    let wrong: [String]
    let book: Int
    let hint: String
    
}
