//
//  Region.swift
//  Projeto mapa
//
//  Created by Student15 on 13/04/23.
//

import Foundation
import MapKit

struct Region : Identifiable{
    var id = UUID()
    var nome: String
    var latLong: CLLocationCoordinate2D
    var foto: String
    var descricao: String
}
