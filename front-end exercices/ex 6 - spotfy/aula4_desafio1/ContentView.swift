//
//  ContentView.swift
//  aula4_desafio1
//
//  Created by Student15 on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    
    var songs = [
        Song(image: "https://i.scdn.co/image/ab67616d0000b273dcef905cb144d4867119850b", name: "Feel So Close - Radio Edit", author: "Calvin Harris"),
        Song(image: "https://i1.sndcdn.com/artworks-000169745398-hhvop9-t500x500.jpg", name: "Dont Let Me Down", author: "The Chainsmokers"),
        Song(image: "https://media.pitchfork.com/photos/6076fd2e17d37fe4717d4907/1:1/w_3000,h_3000,c_limit/Olivia-Rodrigo-SOUR.jpeg", name: "drivers license", author: "Olivia Rodrigo"),
        Song(image: "https://i.scdn.co/image/ab67616d0000b27320e08c8cc23f404d723b5647", name: "ROCKSTAR (feat. Roddy Ricch)", author: "DaBaby"),
        Song(image: "https://i.scdn.co/image/ab67616d0000b273ed1490bec97b20e519d083ac", name: "Lose Yourself", author: "Eminem"),
        Song(image: "https://i.scdn.co/image/ab67616d0000b27322cf06089dc7304bb41b7217", name: "Leave a Light On", author: "Tom Walker"),
        Song(image: "https://upload.wikimedia.org/wikipedia/en/5/58/Humble_kendrick_lamar.jpg", name: "HUMBLE.", author: "Kendrick Lamar"),
        Song(image: "https://upload.wikimedia.org/wikipedia/en/5/55/The_Beatles_-_Butcher_Cover.jpg", name: "Yesterday", author: "The Beatles"),
        Song(image: "https://cdns-images.dzcdn.net/images/cover/a43e104f2ff2872df2e1bf4207b6b5e6/500x500.jpg", name: "Just Give Me a Reason (feat. Nate Ruess)", author: "P!nk"),
        Song(image: "https://i.discogs.com/CsACP6aRFAl70UNUlEK-C7OzpXYEiwG3zP6MvZPMeRY/rs:fit/g:sm/q:90/h:508/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5NzQ0/NzMtMTQ3Nzc3MTI0/Mi03MzcxLmpwZWc.jpeg", name: "History", author: "One Direction")
        
    ]
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                LinearGradient(
                    colors: [Color.purple, Color.blue],
                    startPoint: .top,
                    endPoint: .bottom
                ).ignoresSafeArea()
                
                ScrollView{
                    
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Spacer()
                            AsyncImage(url: URL(string: "https://m.media-amazon.com/images/I/516d1jud2FL._AC_SY355_.jpg")) { image in image
                                    .resizable()
                                    .scaledToFill()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 200, height: 200)
                            .background(Color.gray)
                            .cornerRadius(10)
                            Spacer()
                        }
                        .padding(.top)
                        
                        Text("Julia's jams")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        
                        ForEach(songs, id: \.id) { song in
                            NavigationLink(destination: SongDetailsPage(pSong: song)){
                                
                                HStack(alignment: .center) {
                                    
                                    AsyncImage(url: URL(string: song.image)) { image in image
                                            .resizable()
                                            .scaledToFill()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 44, height: 44)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                                    
                                    VStack(alignment: .leading) {
                                        Text(song.name)
                                            .foregroundColor(Color.black)
                                        Text(song.author)
                                            .foregroundColor(Color.black)
                                    }
                                    
                                    Spacer()
                                    
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(Color.black)
                                    
                                }
                                .padding(.all)
                                .background(Color(hue: 1.0, saturation: 0.103, brightness: 0.07, opacity: 0.209))
                                .cornerRadius(10)
                            }
                        }//ForEach
                        
                        Text("Sugeridos")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top)
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(songs, id: \.id) { song in
                                    NavigationLink(destination: SongDetailsPage(pSong: song)){
                                            
                                        AsyncImage(url: URL(string: song.image)) { image in image
                                                    .resizable()
                                                    .scaledToFill()
                                            } placeholder: {
                                                ProgressView()
                                            }
                                            .frame(width: 200, height: 200)
                                            .background(Color.gray)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                        }
                        
                    } // VStack
                    .padding(.horizontal)
                } // ScrollView
            } // ZStack
        } // navigationStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
