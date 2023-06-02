//
//  ModaleRight.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 31/05/2023.
//

import SwiftUI

struct ModaleRight: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var showToggle : Bool
    
    var body: some View {
        
        VStack {
            Button{
                showToggle.toggle()
            } label: {
                Image(systemName: "multiply")
                    .font(.system(size: 30))
                    .padding(20)
                    .foregroundColor(.black)
                
            }
            Text("Bonne réponse! La France a gagné sa première coupe du Monde en 1998 face au Brésil. Victoire 3-0 avec les buts de Zinedine Zidane, Emmanuel Petit et Marcel Dessailly")
                .padding(40)
        }
    }
}

struct ModaleRight_Previews: PreviewProvider {
    static var previews: some View {
        ModaleRight(showToggle: .constant(true))
    }
}
