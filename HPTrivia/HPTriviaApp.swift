//
//  HPTriviaApp.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 21/06/25.
//

import SwiftUI

@main
struct HPTriviaApp: App {
    private var game = Game()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(game)
        }
    }
}


/**
 App Development plan:
 - Game Intro Screen
 - Gameplay Screen
 - Game Logic
 - Audio
 - Animation
 - In-app purchases
 - Store
 - Insructions
 - Books
 - Persist scores
 */
