//
//  ContentView.swift
//  Aula1
//
//  Created by Student15 on 05/04/23.
//

import SwiftUI

// exercicio 1
//struct ContentView: View {
//    var body: some View {
//        VStack {
//                        Image("bg")
//                            .resizable()
//                            .scaledToFit()
//                        Text("Hackatruck")
//                            .font(.headline)
//                            .foregroundColor(Color.blue)
//                        HStack{
//                            Text("Maker")
//                                .font(.subheadline)
//                                .foregroundColor(Color.yellow)
//                            Text("Space")
//                                .font(.subheadline)
//                                .foregroundColor(Color.red)
//                        }
//
//        }
//        .padding()
//    }
//}


// Exercicio 2
struct ContentView: View {
    var body: some View {
        VStack {
            
            Image("bg")
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            Image("bg")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                    Text("Hackatruck")
                        .font(.headline)
                        .foregroundColor(Color.blue)
                        .padding(.bottom, 150)
                )
            
            Spacer()
            
            HStack{
                Text("Maker")
                    .font(.headline)
                    .foregroundColor(Color.yellow)
                Text("Space")
                    .font(.headline)
                    .foregroundColor(Color.red)
            }
            .frame(width: 300, height: 100)
            .background(Color.black)
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
