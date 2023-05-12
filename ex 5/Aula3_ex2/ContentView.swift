//
//  ContentView.swift
//  Aula3_ex2
//
//  Created by Student15 on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    var aluno = Aluno(
        name: "Julia",
        surname: "Bomfa",
        website: "no",
        nickname: "juju"
    )
    
    var body: some View {
        NavigationStack {
            NavigationLink{
                Modo1()
            }label: {
                Text("Modo 1")
            }
            
            NavigationLink{
                Modo2()
            }label: {
                Text("Modo 2")
            }
            
            Button("Show Sheet") {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
            } content: { Modo3() 
            }
        }
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
