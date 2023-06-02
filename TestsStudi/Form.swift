//
//  Form.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 30/05/2023.
//

import SwiftUI

struct Formulaire: View {
    
    @State var prénom = ""
    @State var nom = ""
    
    @State var connu = false
    @State var followers = true
    @State var friends = true
    
    @State var limites = true
    @State var number = 10
    
    let step = 1
    let range = 1...50
    
    var body: some View {

        Form {
            Section(header: Text("")) {
                Text("Paramètres")
            }
            Section(header: Text("MON PROFIL")) {
                TextField("Prénom", text: $prénom)
                TextField("Nom", text: $nom)

            }
            Section(header: Text("VISIBILITÉ")) {
                Toggle(isOn: $connu) {
                    Text("Profils inconnus")
            }
                Toggle(isOn: $followers) {
                    Text("Profils inconnus")
            }
                Toggle(isOn: $friends) {
                    Text("Profils inconnus")
            }
            }
            
            Section(header: Text("LIMITES")) {
                Toggle(isOn: $limites) {
                    Text("Limites de connexion")
                }
                
                if limites {
                    Stepper(value: $number,
                            in: range,
                            step: step) {
                        Text("Limite: \(number)")
                    }
                }
            }
            Section(header: Text("")) {
                Button("Valeurs par défaut") {
                    connu = false
                    followers = true
                    friends = true
                    limites = true
                    number = 10
                }
                .foregroundColor(.red)
                Text("Confirmer")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct Formulaire_Previews: PreviewProvider {
    static var previews: some View {
        Formulaire()
    }
}
