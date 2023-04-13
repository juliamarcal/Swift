//
//  Modo1.swift
//  Aula3_ex2
//
//  Created by Student15 on 11/04/23.
//

import SwiftUI

struct Modo1: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                Modo1_Tela2()
            } label: {
                Text("Proxima pagina")
            }
        }
    }
}

struct Modo1_Previews: PreviewProvider {
    static var previews: some View {
        Modo1()
    }
}
