//
//  ContentView.swift
//  aula2-desafio1
//
//  Created by Student15-turno_noite on 10/04/23.
//

import SwiftUI

struct ContentView: View {

    @State private var weight: Double = 0.0
    @State private var height: Double = 0.0
    @State private var IMC: Double = 0.0
    @State private var classificacao: String = "Normal"
    
    var body: some View {
        
        ZStack{
            Color(classificacao)
            .ignoresSafeArea()

            VStack(){
                
                Text("Calculadora de IMC")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical, 13.0)
                
                TextField("digite o peso", value:$weight, format: .number)
                    .padding(.bottom, 21.0)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                
                TextField("digite a altura", value:$height, format: .number)
                    .padding(.bottom)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                
                Button("Calcular IMC"){
                    calcIMC()
                }
                
                .padding(.all)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(12)
                Spacer()
                Text(classificacao)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.bottom, 35.0)
                
                Spacer()
                
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
                
            }
            .padding(.horizontal)
        }
    }
    
    
    func calcIMC() {
        var IMC = (weight / pow(height, 2))
        
        switch IMC {
        case ...18.5:
                classificacao = "Baixo peso"
            
        case 18.6...24.99:
                classificacao = "Normal"
            
        case 25.00...29.99:
                classificacao = "Sobrepeso"
            
        default:
                classificacao = "Obesidade"
        }
        
    }
    
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
