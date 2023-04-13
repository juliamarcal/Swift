//
//  SongDetailsPage.swift
//  aula4_desafio1
//
//  Created by Student15 on 12/04/23.
//

import SwiftUI

struct SongDetailsPage: View {
    var pSong: Song
    
    var body: some View {
        
        ZStack {
            LinearGradient(
                colors: [Color.purple, Color.blue],
                startPoint: .top,
                endPoint: .bottom
            ).ignoresSafeArea()
            
            VStack {
                
                AsyncImage(url: URL(string: "https://m.media-amazon.com/images/I/516d1jud2FL._AC_SY355_.jpg")) { image in image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200, height: 200)
                .background(Color.gray)
                .cornerRadius(10)
                
                Text(pSong.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(pSong.author)
                    .font(.headline)
            }
            .padding(.bottom, 80.0)
            
        }
    }
}

struct SongDetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        var placeholder =  Song(image: "", name:"SongName", author: "author")
        SongDetailsPage(pSong: placeholder)
    }
}
