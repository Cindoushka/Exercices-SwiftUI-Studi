//
//  AccueilCouleurs.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 31/05/2023.
//

import SwiftUI

struct AccueilCouleurs: View {
    
    @State var showToggle2 = false
    
    @State var couleurChoisie: Color = .black
    
    var body: some View {

        VStack(spacing: 50){
            Text("Paramètres")
                .font(.largeTitle)
                .foregroundColor(couleurChoisie)
            
            
            Button{
                showToggle2.toggle()
            } label: {
                Text("Changez la couleur")
                    .foregroundColor(.white)
            }
            .padding(16)
            .background(.blue)
            .cornerRadius(16)
            .sheet(isPresented: $showToggle2, content: {
                Couleurs(showToggle2: $showToggle2, couleurChoisie: $couleurChoisie)
        })
        }
    }
}

struct AccueilCouleurs_Previews: PreviewProvider {
    static var previews: some View {
        AccueilCouleurs()
    }
}
