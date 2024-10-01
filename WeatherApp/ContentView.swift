//
//  ContentView.swift
//  WeatherApp
//
//  Created by Saud Syed on 26/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    private let forecastList = ForecastData().forecastList
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack {
                CurrentWeatherStatusView(cityName: "Karachi",
                                         imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                         temperature: 70)
                
                HStack(spacing: 20) {
                    ForEach(forecastList) { forecast in
                        WeatherDayView(dayName: forecast.dayName, imageName: forecast.imageName, temperature: forecast.temperature)
                    }
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation {
                        isNight.toggle()
                    }
                }, label: {
                    Text("Change Day Time")
                        .font(.system(size: 20, weight: .bold))
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .cornerRadius(10)
                    
                })
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
