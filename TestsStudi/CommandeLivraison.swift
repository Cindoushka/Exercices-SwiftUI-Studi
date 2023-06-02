//
//  CommandeLivraison.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 30/05/2023.
//

import SwiftUI

struct CommandeLivraison: View {
    
    @State var prenom = ""
    @State var adresse = ""
    
    @State var cheese = false
    @State var olives = false
    @State var ananas = false
    
    let step = 1
    let range = 0...10
    
    @State var cookies = 0
    @State var brownies = 0
    @State var pommes = 0
    
    var total: Double {
           var value =  10.50 + Double(cookies+brownies+pommes) * 2
           if cheese {
               value += 0.5
           }
           if olives {
               value += 0.5
           }
           if ananas {
               value += 0.5
           }
           return value
       }

    var body: some View {

        Form {
            Section(header: Text("Où vous livrer?")) {
                TextField("Prénom", text: $prenom)
                TextField("Adresse", text: $adresse)
            }
            
            Section(header: Text("A vos couverts!"), footer: Text("Personnalisez votre pizza sur mesure")) {
                Toggle(isOn: $cheese) {
                    Text("Fromage : + 0,50€")
                }
                
                Toggle(isOn: $olives) {
                    Text("Olives : + 0,50€")
                }
                
                
                Toggle(isOn: $ananas) {
                    Text("Ananas : + 0,50€")
                }
            }
            
            Section(header: Text("DESSERTS")) {
                
                Stepper(value: $cookies,
                        in: range,
                        step: step) {
                    Text("Cookies (+2,00€) : \(cookies)")
                }
                
                Stepper(value: $brownies,
                        in: range,
                        step: step) {
                    Text("Brownies (+2,00€) : \(brownies)")
                }

                
                Stepper(value: $pommes,
                        in: range,
                        step: step) {
                    Text("Pommes (+2,00€) : \(pommes)")
                }
            }
            
            Section {
                Text("Total: \(total) €")
                Text("Commander")
                    .foregroundColor(.blue)
            }
        }
    
    }
    

    
}



struct CommandeLivraison_Previews: PreviewProvider {
    static var previews: some View {
        CommandeLivraison()
    }
}


