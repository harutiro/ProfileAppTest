//
//  ContentView.swift
//  ProfileAppTest
//
//  Created by はるちろ on R 6/10/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GreetingImage(
                message: "Happy Birthday Sam",
                from: "From Emma"
            )
        }
    }
}

struct GreetingImage: View{
    
    var message: String
    var from: String
    
    var body: some View {
        ZStack{
            
            GeometryReader { proxy in
                Image("see")
                .resizable()
                .scaledToFill()
                .frame(width: proxy.size.width, height: proxy.size.height)
            }.ignoresSafeArea()

            GreetingText(
                message: message,
                from: from
            )
        }
    }
}


struct GreetingText: View {
    
    var message: String
    var from: String
    
    var body: some View {
        VStack{
            Text(message)
                .font(.system(size: 100))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(16)
            
            Text(from)
                .font(.system(size: 25))
                .fontWeight(.regular)
                .frame(
                    maxWidth: .infinity,
                    alignment: .trailing
                )
                .padding(16)
        }
        .padding(32)
    }
}

#Preview {
    ContentView()
}
