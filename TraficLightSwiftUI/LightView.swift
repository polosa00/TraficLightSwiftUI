//
//  LightView.swift
//  TraficLightSwiftUI
//
//  Created by Александр Полочанин on 9.06.23.
//

import SwiftUI

struct LightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color(.white), lineWidth: 4))
            .foregroundColor(color)
            .opacity(opacity)
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .blue, opacity: 1)
    }
}
