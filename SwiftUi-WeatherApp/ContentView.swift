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
            LinearGradient(gradient: Gradient(colors: [.red, .blue, .white, .green]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .blur(radius: 100, opaque: true)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cuppertino, CA")
                    .font(.system(size: 29, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("25℃")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
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
