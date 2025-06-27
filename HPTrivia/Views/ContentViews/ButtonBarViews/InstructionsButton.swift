//
//  InstructionsButton.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 27/06/25.
//

import SwiftUI

struct InstructionsButton: View {
    @Binding var animateViewsIn: Bool
    @State private var showInstructions = false
    let geo: GeometryProxy
    var body: some View {
        VStack {
            if animateViewsIn {
                Button {
                    showInstructions.toggle()
                }label: {
                    Image(systemName: "info.circle.fill")
                        .font(.title)
                        .foregroundStyle(.white)
                        .shadow(radius: 5)
                }
                .transition(.offset(x: -geo.size.height/4))
            }
        }
        .animation(.easeOut(duration: 0.7).delay(2.7), value: animateViewsIn)
        .sheet(isPresented: $showInstructions){
            Instructions()
        }
    }
}

#Preview {
    GeometryReader{geo in
        InstructionsButton(animateViewsIn: .constant(true),geo: geo)
    }
}
