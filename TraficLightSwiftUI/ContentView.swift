//
//  ContentView.swift
//  TraficLightSwiftUI
//
//  Created by Александр Полочанин on 9.06.23.
//

import SwiftUI

enum TraficLight {
    case red, yellow, green, startingLight
}

struct ContentView: View {

    @State private var currentColor: TraficLight = .startingLight
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                LightView(
                    color: .red,
                    opacity: currentColor == .red ? 1 : 0.3
                )
                LightView(
                    color: .yellow,
                    opacity: currentColor == .yellow ? 1 : 0.3
                )
                LightView(
                    color: .green,
                    opacity: currentColor == .green ? 1 : 0.3
                )
                   
                Spacer()
                
                Button(action: buttonPressed) {
                    Text(currentColor == .startingLight
                         ? "START" : "NEXT")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 150, height: 50)
                        .background(.blue)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 4))
                }
            }
            .padding(.bottom, 20)
        }
    }

    private func buttonPressed() {
    
        switch self.currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
           currentColor = .green
        case .green:
           currentColor = .red
        default:
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
