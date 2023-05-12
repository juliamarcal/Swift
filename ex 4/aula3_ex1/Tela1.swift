//
//  Tela1.swift
//  aula3_ex1
//
//  Created by Student15 on 11/04/23.
//

import SwiftUI

struct Tela1: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            List(1...50, id: \.self) {
                Text("Item \($0)")
            }
            
        }
    }
}

struct Tela1_Previews: PreviewProvider {
    static var previews: some View {
        Tela1()
    }
}
