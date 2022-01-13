//
//  ContentView.swift
//  SwiftUi-WeatherApp
//
//  Created by Arjun Doel on 13/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .red, middleColor1: .blue, middleColor2: .white, bottomColor: .green)
            VStack {
                CityTextView(cityName: "Cuppertino, CA")
                
                MainWeatherView(weatherImage: "cloud.sun.fill", temperature: 25)
                
                HStack(spacing: 15) {
                    WeatherDayView(dayOfWeek: "MON", imageName: "sun.max.fill", temperature: 30)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.fill", temperature: 23)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.fill", temperature: 25)
                    WeatherDayView(dayOfWeek: "THU", imageName: "sun.max.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 29)
                }
                .padding(10)
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color.blue.opacity(0.2))
                
                Spacer()
                
                Button {
                    print("Tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 70)
                        .background(Color.white.opacity(0.9))
                        .font(.system(size: 30, weight: .medium, design: .default))
                        .cornerRadius(30)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            
            Text("\(temperature)℃")
                .font(.system(size: 22, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var middleColor1: Color
    var middleColor2: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, middleColor1, middleColor2, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .blur(radius: 100, opaque: true)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 29, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherView: View {
    var weatherImage: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)℃")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
