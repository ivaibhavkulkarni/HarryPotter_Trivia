//
//  SettingsButton.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 27/06/25.
//

import SwiftUI

struct SettingsButton: View {
    @Binding var animateViewsIn: Bool
    @State private var ShowSettings = false
    
    let geo: GeometryProxy
    var body: some View {
        VStack{
            if animateViewsIn {
                Button{
                    ShowSettings.toggle()
                }label: {
                    Image(systemName: "gearshape.fill")
                        .font(.title)
                        .foregroundStyle(.white)
                        .shadow(radius: 5)
                }
                .transition(.offset(x: geo.size.height/4))
            }
        }
        .animation(.easeOut(duration: 0.7).delay(2.7), value: animateViewsIn)
        .sheet(isPresented: $ShowSettings) {
            SelectBooks()
        }
    }
}

#Preview {
    GeometryReader { geo in
        SettingsButton(animateViewsIn: .constant(true), geo: geo)
            .environment(Game())
    }
    
}
