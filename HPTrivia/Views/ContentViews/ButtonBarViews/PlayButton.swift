//
//  PlayButton.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 27/06/25.
//

import SwiftUI

struct PlayButton: View {
    @Binding var animateViewsIn: Bool
    @Binding var playGame: Bool
    @State private var scalePlayButton = false
    let geo: GeometryProxy
    
    var body: some View {
        VStack{
            if animateViewsIn {
                Button {
                    playGame.toggle()
                }label: {
                    Text("Play")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding(.vertical,7)
                        .padding(.horizontal, 50)
                        .background(.yellow)
                        .clipShape(.rect(cornerRadius: 20))
                        .shadow(radius: 5)
                        .scaleEffect(scalePlayButton ? 1.2 : 1)
                        .onAppear{
                            withAnimation(.easeInOut(duration: 1.3).repeatForever()) {
                                scalePlayButton.toggle()
                            }
                        }
                    
                }
                .transition(.offset(y: geo.size.height/3))
            }
        }
        .animation(.easeOut(duration: 0.7).delay(2),value: animateViewsIn)
    }
}

#Preview {
    GeometryReader { geo in
        PlayButton(animateViewsIn: .constant(true), playGame: .constant(false),geo: geo)
    }
    
}
