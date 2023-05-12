//
//  ContentView.swift
//  Projeto mapa
//
//  Created by Student15 on 13/04/23.
// mapAnnotation + ontapGesture

import SwiftUI
import MapKit

struct ContentView: View {
    private var regions = [
        Region(nome: "BH", latLong: CLLocationCoordinate2D(latitude: -19.888240, longitude: -43.950425), foto: "https://viagemeturismo.abril.com.br/wp-content/uploads/2011/09/GettyImages-1164542668.jpg", descricao: "Belo Horizonte é a capital do estado de Minas Gerais, no sudeste do Brasil. Rodeada de montanhas, a cidade é conhecida pelo enorme Estádio Mineirão. Construído em 1965, o estádio alberga também o Museu Brasileiro do Futebol. Nas proximidades encontra-se a Lagoa da Pampulha e o Conjunto Arquitetónico da Pampulha, que inclui a Igreja de São Francisco de Assis, cujo teto é ondulado e que foi concebida pelo arquiteto modernista brasileiro Oscar Niemeyer."),
        
        Region(nome: "Montreal", latLong: CLLocationCoordinate2D(latitude: 45.512741, longitude: -73.614449), foto: "https://www.viajali.com.br/wp-content/uploads/2018/06/montreal-canada-25-1.jpg", descricao: "Montreal é a maior cidade da província de Quebec, no Canadá. Ela fica em uma ilha no rio São Lourenço e foi batizada em homenagem ao Monte Royal, uma montanha com três colinas localizada no centro da cidade. Muitos dos seus bairros já foram cidades independentes, com estilos que variam do francês colonial de Vieux-Montréal, com ruas pavimentadas com pedras arredondadas e a gótica Basílica de Notre-Dame no centro, ao boêmio Plateau."),
        
        Region(nome: "Paris", latLong: CLLocationCoordinate2D(latitude: 48.863629, longitude: 2.349708), foto: "https://www.viajaquepassa.com.br/wp-content/uploads/2021/02/torre-eiffel-paris.png", descricao: "Paris, a capital da França, é uma importante cidade europeia e um centro mundial de arte, moda, gastronomia e cultura. Sua paisagem urbana do século XIX é cortada por avenidas largas e pelo rio Sena. A cidade é conhecida por monumentos como a Torre Eiffel e a Catedral de Notre-Dame, uma construção gótica do século XII, sendo famosa também pela cultura dos cafés e por lojas de estilistas famosos na Rue du Faubourg Saint-Honoré."),
    ]
    
    @State private var coordenates = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -19.924433, longitude: -43.990387),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    )
    
    @State private var showingSheet = false
    
    @State public var locationData = Region(nome: "BH", latLong: CLLocationCoordinate2D(latitude: -19.888240, longitude: -43.950425), foto: "https://viagemeturismo.abril.com.br/wp-content/uploads/2011/09/GettyImages-1164542668.jpg", descricao: "Belo Horizonte é a capital do estado de Minas Gerais, no sudeste do Brasil. Rodeada de montanhas, a cidade é conhecida pelo enorme Estádio Mineirão. Construído em 1965, o estádio alberga também o Museu Brasileiro do Futebol. Nas proximidades encontra-se a Lagoa da Pampulha e o Conjunto Arquitetónico da Pampulha, que inclui a Igreja de São Francisco de Assis, cujo teto é ondulado e que foi concebida pelo arquiteto modernista brasileiro Oscar Niemeyer.")
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $coordenates, annotationItems: regions) {region in
                MapAnnotation(coordinate: region.latLong) {
                    Circle().frame(width: 15, height: 15)
                        .onTapGesture {
                            showingSheet.toggle()
                        }
                }
                
            }.sheet(isPresented: $showingSheet){
                VStack {
                    AsyncImage(url: URL(string: ContentView().locationData.foto)) { image in image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 300, height: 200)
                    .background(Color.gray)
                    .cornerRadius(10)
                    
                    Text(locationData.nome)
                        .font(.title)
                        .padding(.vertical, 7.0)
                    
                    Text(locationData.descricao)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                }
                .padding(.all)
            }
            
            HStack {
                ForEach(regions, id: \.id){ region in
                    
                    Button(region.nome) {
                        coordenates.center = region.latLong
                        locationData = region
                    }
                    .padding(.all)
                    .foregroundColor(Color.white)
                    .font(Font.headline)
                    .background(Color.black)
                    .cornerRadius(10)
                    
                    
                }// for each
            }// HStack
            .padding(.top)
            
            
        }// VStack
        .frame(width: 400, height: 550)
        
        
        
        
    }// body
} // view


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



