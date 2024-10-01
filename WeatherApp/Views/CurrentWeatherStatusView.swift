//
//  CurrentWeatherStatusView.swift
//  WeatherApp
//
//  Created by Saud Syed on 26/09/2024.
//

import SwiftUI

struct CurrentWeatherStatusView: View {
    
    var cityName: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundStyle(.white)
            .padding()
        
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 50)
    }
}
