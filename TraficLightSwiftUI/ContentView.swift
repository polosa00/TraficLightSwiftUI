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
    var buttonTitle = "START"
    
    private let lightOn = 1.0
    private let lightOff = 0.3
    
    @State private var currentColor: TraficLight = .red
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack{
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(currentColor == .red ? .red : .red.opacity(lightOff))
                    .overlay(Circle().stroke(Color(.white), lineWidth: 4))
                    .padding(.top, 10)
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(currentColor == .yellow ? .yellow : .yellow.opacity(lightOff))
                    .overlay(Circle().stroke(Color(.white), lineWidth: 4))
                    .padding(.top, 10)
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(currentColor == .green ? .green : .green.opacity(lightOff))
                    .overlay(Circle().stroke(Color(.white), lineWidth: 4))
                    .padding(.top, 10)
               
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
