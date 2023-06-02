//
//  Listimages.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 30/05/2023.
//

import SwiftUI

struct Listimages: View {
    
    struct ListImages: Identifiable {
        var id = UUID()
        var image: String
        var nom: String
    }
    
    var bast = [ListImages(image: "cindie", nom: "Ceci"),
                ListImages(image: "cindie", nom: "est un"),
                ListImages(image: "cindie", nom: "test")
    ]
    
    @State var bouton = "star"
    var body: some View {

        VStack {
            
            ForEach(bast) { bastien in
                
                Divider()
                
                HStack {
                    Image(bastien.image)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaledToFill()
                        .padding(.horizontal, 10)
                    
                    Text(bastien.nom)
                    
                    Spacer()
                    
                    Button(action: {
                        if bouton == "star" {
                            bouton = "star.slash"
                        } else  if bouton == "star.slash" {
                            bouton = "star"
                            }
                        
                    }, label: {
                        Image(systemName: bouton)
                            .padding()
                    })
                }
                
            }
            Spacer()

        }
    }
}

struct Listimages_Previews: PreviewProvider {
    static var previews: some View {
        Listimages()
    }
}
