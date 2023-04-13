//
//  ContentView.swift
//  aula3_ex1
//
//  Created by Student15 on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tela1()
                .tabItem{
                    Label("Tela 1", systemImage: "trash")
                }
            
            Tela2()
                .tabItem{
                    Label("Tela 2", systemImage: "paperplane")
                }
            
            Tela3()
                .tabItem{
                    Label("Tela 3", systemImage: "calendar")
                }
            
            Tela4()
                .tabItem{
                    Label("Tela 4", systemImage: "books.vertical.fill")
                }
            
            Tela5()
                .tabItem{
                    Label("Tela 5", systemImage: "person.crop.circle.fill")
                }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
