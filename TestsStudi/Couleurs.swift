//
//  Couleurs.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 31/05/2023.
//

import SwiftUI

struct Couleurs: View {
    
    @Binding var showToggle2 : Bool
    
    @Environment(\.dismiss) var dismiss

    @Binding var couleurChoisie: Color
    
    let couleurs : [Color] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    var body: some View {
        
        HStack{
            ForEach(couleurs, id: \.self) { colors in
                Button{
                    showToggle2.toggle()
                    couleurChoisie = colors
                } label: {
                    Circle()
                        .frame(width:60)
                        .foregroundColor(colors)
                }
            }
            
        }
    }
}

struct Couleurs_Previews: PreviewProvider {
    static var previews: some View {
        Couleurs(showToggle2: .constant(true), couleurChoisie: .constant(.black))
    }
}
