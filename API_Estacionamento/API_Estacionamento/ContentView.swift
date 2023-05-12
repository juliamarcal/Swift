//
//  ContentView.swift
//  API_Estacionamento
//
//  Created by Student15 on 18/04/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            VStack {
                ForEach(viewModel.chars, id: \._id) {p in
                    
                    HStack {
                        Text(p.NomeEstacionamento)
                        Text(p.Endereco)
                        Text("\(p.Vagas) vagas")
                    }
                    
                    ForEach(p.Carros, id: \.Modelo) {car in
                        Text(car.Modelo)
                        Text(car.Cor)
                        Text("\(car.Ano)")
                        Text("\(car.Preco, specifier: "%.2f")")
                    }
                }
            }// VStack
            .onAppear(){
                viewModel.fetch()
            }
        }
    }// body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
