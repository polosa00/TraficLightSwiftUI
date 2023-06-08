//
//  ContentView.swift
//  TraficLightSwiftUI
//
//  Created by Александр Полочанин on 9.06.23.
//

import SwiftUI

struct ContentView: View {
    enum TraficLight {
        case red, yellow, green
    }
    @State private var buttonTitle = "START"
    @State private var currentColor: TraficLight = .red
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack{
                LightView(color: currentColor == .red ? .red : .red.opacity(0.3))
                LightView(color: currentColor == .yellow ? .yellow : .yellow.opacity(0.3))
                LightView(color: currentColor == .green ? .green : .green.opacity(0.3))
                
                Spacer()
                
                Button(action: buttonPressed) {
                    
                    Text("\(buttonTitle)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                }
                .frame(width: 150, height: 45)
                .background(.blue)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
            }
            .padding()
        }
    }
    
    private func buttonPressed() {
        self.buttonTitle = "NEXT"
        switch self.currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
           currentColor = .green
        case .green:
           currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
