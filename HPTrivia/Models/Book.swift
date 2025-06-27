//
//  Book.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 27/06/25.
//

struct Book: Identifiable {
    var id: Int
    var image: String
    var questions: [Question]
    var status: BookStatus
}

enum BookStatus {
    case active, inactive, locked
}
