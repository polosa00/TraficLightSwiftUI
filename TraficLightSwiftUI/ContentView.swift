//
//  ContentView.swift
//  TraficLightSwiftUI
//
//  Created by Александр Полочанин on 9.06.23.
//

import SwiftUI

struct ContentView: View {
    let
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack{
                LightView(color: .red)
                LightView(color: .yellow)
                LightView(color: .green)
                Spacer()
                ButtonView()
            }
            .padding()
        }
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
