//
//  Modo3.swift
//  Aula3_ex2
//
//  Created by Student15 on 11/04/23.
//

import SwiftUI

struct Modo3: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        
        VStack{
            Button("Press to dismiss") {
                dismiss()
            }
            .font(.title)
            .padding()
            
            Text(ContentView().aluno.name);
            Text(ContentView().aluno.surname);
            Text(ContentView().aluno.nickname);
            Text(ContentView().aluno.website);
        }
    }
}

struct Modo3_Previews: PreviewProvider {
    static var previews: some View {
        Modo3()
    }
}
