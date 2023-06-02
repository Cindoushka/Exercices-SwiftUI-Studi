//
//  DetailsMails.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 31/05/2023.
//

import SwiftUI

struct DetailsMails: View {
    
    var emails : Emails
    
    var body: some View {

        VStack(alignment: .leading, spacing: 20) {
            
            Text("From: \(emails.expediteur.capitalized)")
                .foregroundColor(.gray)
            
            Text("Objet: \(emails.objet)")
                .fontWeight(.bold)
                .font(.title)
            
            Text(emails.body)
                .font(.title3)
            
            Spacer()

        }
        .padding()
        
    }
}

struct DetailsMails_Previews: PreviewProvider {
    static var previews: some View {
        DetailsMails(emails: emails[1])
    }
}
