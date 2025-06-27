//
//  RecentScores.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 27/06/25.
//

import SwiftUI

struct RecentScores: View {
    @Binding var animateViewsIn: Bool
    
    var body: some View {
        VStack{
            if animateViewsIn {
                VStack {
                    Text("Recent Scores")
                        .font(.title2)
                    
                    Text("33")
                    Text("22")
                    Text("11")
                }
                .font(.title3)
                .foregroundStyle(.white)
                .padding(.horizontal)
                .background(.black.opacity(0.7))
                .clipShape(.rect(cornerRadius: 15))
                .transition(.opacity)
            }
        }
        .animation(.linear(duration: 1).delay(4), value: animateViewsIn)
    }
}

#Preview {
    RecentScores(animateViewsIn: .constant(true))
}
