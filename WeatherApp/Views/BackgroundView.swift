//
//  BackgroundView.swift
//  WeatherApp
//
//  Created by Saud Syed on 26/09/2024.
//

import SwiftUI

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightAqua")],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
        .animation(.easeInOut(duration: 1.0), value: isNight)
    }
}
