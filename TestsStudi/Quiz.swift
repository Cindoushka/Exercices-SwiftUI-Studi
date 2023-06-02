//
//  Quiz.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 31/05/2023.
//

import SwiftUI

struct Quiz: View {
    
    @State var showToggle = false
    
    @Environment(\.dismiss) var dismiss

    
    var body: some View {

        VStack(spacing: 40) {
            Text("En quelle année la France a-t-elle gagné sa première coupe du monde?")
            
            Button(action: {
                showToggle.toggle()
            }, label: {
               Text("1994")
            })
            .sheet(isPresented: $showToggle, content: {
                ModaleWrong(showToggle: $showToggle)
        })
            
            Button(action: {
                showToggle.toggle()
            }, label: {
               Text("1998")
            })
            .sheet(isPresented: $showToggle, content: {
                ModaleRight(showToggle: $showToggle)
        })
            
            Button(action: {
                showToggle.toggle()
            }, label: {
               Text("2002")
            })
            .sheet(isPresented: $showToggle, content: {
                ModaleWrong(showToggle: $showToggle)
        })
        }

    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
