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
            GreetingText(
                message: "Happy Birthday Sam",
                from: "From Emma"
            )
        }
        .padding()
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
                .font(.system(size: 50))
                .fontWeight(.regular)
                .frame(
                    maxWidth: .infinity,
                    alignment: .trailing
                )
                .padding(16)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ContentView()
}
