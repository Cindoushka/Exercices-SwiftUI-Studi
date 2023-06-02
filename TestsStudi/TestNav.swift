//
//  TestNav.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 31/05/2023.
//

import SwiftUI

struct TestNav: View {
    
    let listesMenu = ["Profil", "Paramètres", "Mes amis"]
    var body: some View {
        NavigationView{
            List(listesMenu,  id: \.self){ menu in
                NavigationLink {
                    Text("Ceci est la page de votre \(menu)")
                } label: {
                    Text(menu)
                }

            }
        }
        .navigationTitle("Paramètres")
    }
}

struct TestNav_Previews: PreviewProvider {
    static var previews: some View {
        TestNav()
    }
}
