//
//  ContentView.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 21/06/25.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State private var audioPlayer: AVAudioPlayer!
    @State private var animateViewsIn = false
    @State private var playGame = false
    
    
    var body: some View {
        GeometryReader { geo in
            ZStack{
                AnimatedBackground(geo: geo)
                VStack{
                    // Game Title
                    GameTitle(animateViewsIn: $animateViewsIn)
                    
                    Spacer()
                    
                    // Recent scores
                    RecentScores(animateViewsIn: $animateViewsIn)
                    
                    Spacer()
                    
                    // Buttons Bar
                    ButtonBar(playGame: $playGame, animateViewsIn: $animateViewsIn, geo: geo)
                    
                    Spacer()
                }
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .ignoresSafeArea()
        .onAppear{
            animateViewsIn = true
            playAudio()
        }
        .fullScreenCover(isPresented: $playGame) {
            Gameplay()
                .onAppear {
                    audioPlayer.setVolume(0, fadeDuration: 2)
                }
                .onDisappear{
                    audioPlayer.setVolume(1, fadeDuration: 3)
                }
        }
    }
    
    private func playAudio() {
        let sound = Bundle.main.path(forResource: "magic-in-the-air", ofType: "mp3")
        audioPlayer = try! AVAudioPlayer(contentsOf: URL(filePath: sound!))
        audioPlayer.numberOfLoops = 1
        audioPlayer.play()
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.light)
        .environment(Game())
}
