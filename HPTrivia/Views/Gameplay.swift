//
//  Gameplay.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 27/06/25.
//

import SwiftUI

struct Gameplay: View {
    
    
    var body: some View {
        GeometryReader { geo in
            ZStack{
                Image(.hogwarts)
                    .resizable()
                    .frame(width: geo.size.width * 3, height: geo.size.height * 1.20)
                    .overlay {
                        Rectangle()
                            .foregroundStyle(.black.opacity(0.8))
                    }
                VStack {
                    // MARK: CONTROLS
                    
                    // MARK: QUESTIONS
                    
                    // MARK: HINTS
                    
                    // MARK: ANSWERS
                }
                .frame(width: geo.size.width, height: geo.size.height)
                
                // MARK: CELEBRATIONS
            }
            .frame(width: geo.size.width, height: geo.size.height)
            
        }
    }
}

#Preview {
    Gameplay()
}
