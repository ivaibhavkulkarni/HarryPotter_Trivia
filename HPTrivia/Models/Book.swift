//
//  Book.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 27/06/25.
//

struct Book: Codable, Identifiable {
    var id: Int
    var image: String
    var questions: [Question]
    var status: BookStatus
}

enum BookStatus : Codable{
    case active, inactive, locked
}
