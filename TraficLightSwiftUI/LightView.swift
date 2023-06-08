//
//  LightView.swift
//  TraficLightSwiftUI
//
//  Created by Александр Полочанин on 9.06.23.
//

import SwiftUI

struct LightView: View {
 
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.gray)
                .overlay(Circle().stroke(Color(.white), lineWidth: 4))
        }
        .padding(.top, 10)
        .opacity(0.3)
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView()
    }
}
