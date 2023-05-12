//
//  Modo2.swift
//  Aula3_ex2
//
//  Created by Student15 on 11/04/23.
//

import SwiftUI

struct Modo2: View {
    var body: some View {
        VStack{
            Text(ContentView().aluno.name);
            Text(ContentView().aluno.surname);
            Text(ContentView().aluno.nickname);
            Text(ContentView().aluno.website);
        }
    }
}

struct Modo2_Previews: PreviewProvider {
    static var previews: some View {
        Modo2()
    }
}
