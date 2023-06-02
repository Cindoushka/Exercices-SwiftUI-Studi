//
//  ContentView.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 30/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var tempsDeCuisson = 8.00
    @State private var isEditing = false

    @State var cheese = false
    
    @State var remarque = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Choisissez votre pizza")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.red)
                
            Spacer()
            
            
            Text("Définissez le temps de cuisson")
                .font(.title3)
                .fontWeight(.medium)
            
            Slider(
                value: $tempsDeCuisson,
                in: 8...15, step: 1,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text("\(tempsDeCuisson, specifier: "%.0f") minutes")
                .foregroundColor(isEditing ? .red : .green)


                Toggle(isOn: $cheese) {
                    Text("Supplément fromage")
                        .font(.title3)
                        .fontWeight(.medium)
            }
                .padding(.vertical, 20)
            
            Text("Remarques")
                .font(.title3)
                .fontWeight(.medium)
            
            TextField("Écrivez ici", text: $remarque)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
