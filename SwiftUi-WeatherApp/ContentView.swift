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
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("25℃")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
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
