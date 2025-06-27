//
//  ButtonBar.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 27/06/25.
//

import SwiftUI

struct ButtonBar: View {
    @Binding var playGame: Bool
    @Binding var animateViewsIn: Bool
    let geo: GeometryProxy
    
    
    var body: some View {
        HStack {
            Spacer()
            
            // Instruction Button
            InstructionsButton(animateViewsIn: $animateViewsIn, geo: geo)
            
            Spacer()
            
            // Play Button
            PlayButton(animateViewsIn: $animateViewsIn,playGame: $playGame, geo: geo)
            
            
            Spacer()
            
            // Settings Button
            SettingsButton(animateViewsIn: $animateViewsIn, geo: geo)
            
            Spacer()
        }
        .frame(width: geo.size.width)
    }
}

#Preview {
    GeometryReader {geo in
        ButtonBar(playGame: .constant(false), animateViewsIn: .constant(true), geo: geo)
    }
}
