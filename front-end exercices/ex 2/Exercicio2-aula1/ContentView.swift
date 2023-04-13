//
//  ContentView.swift
//  Exercicio2-aula1
//
//  Created by Student15 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    @State public var showAlert = false
    var body: some View {
        VStack {
            ZStack{
                
                Image("bg")
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 5)
                    .opacity(0.5)
                    .frame(width: 200, height: 900)
                VStack{
                    Text("Bem vindo Fulano")
                        .font(.largeTitle)
                    Text("fulano")
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                    
                    Image("truck")
                        .resizable()
                        .scaledToFit()
                    
                    Spacer()
                    
                    Button("Abrir") {
                        showAlert = true
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Alerta!"),
                            message: Text("Voce ira comcar o desafio agora")
                        )
                    }
                    
                }
                .padding(.horizontal, 45.0)
                .frame(height: 700)
                
                
                
                
            }
            
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
