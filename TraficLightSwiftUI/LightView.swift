//
//  LightView.swift
//  TraficLightSwiftUI
//
//  Created by Александр Полочанин on 9.06.23.
//

import SwiftUI

struct LightView: View {
    var color: Color
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .overlay(Circle().stroke(Color(.white), lineWidth: 4))
                .foregroundColor(color)
        }
        .padding(.top, 10)
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .blue)
    }
}
