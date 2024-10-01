//
//  WeatherDayView.swift
//  WeatherApp
//
//  Created by Saud Syed on 26/09/2024.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayName: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayName)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
