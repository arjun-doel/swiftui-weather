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
