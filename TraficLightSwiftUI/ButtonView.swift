//
//  ButtonView.swift
//  TraficLightSwiftUI
//
//  Created by Александр Полочанин on 9.06.23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(action: buttonPressed) {
            Text("Start")
                .foregroundColor(.white)
                
        }
        .frame(width: 150, height: 45)
        .background(.blue)
        .cornerRadius(15)

        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))

        
    }
    
    private func buttonPressed() {
        
    }
}



struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
