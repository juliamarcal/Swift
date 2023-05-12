//
//  ContentView.swift
//  API_Pokemon
//
//  Created by Student15 on 14/04/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            //image
            Text("\(viewModel.chars.count)")
            ForEach(viewModel.chars, id: \.name) {p in
                Text(p.name)
            }
        }.onAppear(){
            viewModel.fetch()
        }// VStack
        
    }// body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
