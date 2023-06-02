//
//  Mails.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 31/05/2023.
//

import SwiftUI

struct Emails: Identifiable {
    var id = UUID()
    var expediteur : String
    var objet: String
    var body : String
    var isPrioritaire: Bool
}

var emails = [
    Emails(expediteur: "madysh@orange.fr", objet: "Soirée Gartic Phones", body: "Hello Cindie, j'espère que tu vas bien! \n Pour te dire que samedi c'est soirée Gartiiiiic! J'espère que tu seras présente pour nous montrer tes talents de dessin!", isPrioritaire: false),
    Emails(expediteur: "jenono@sfr.fr", objet: "Challenges CTF", body: "Je viens de finir le dernier challenge web CTF404, si tu veux je te fais une démo plus tard et je t'explique..", isPrioritaire: true),
    Emails(expediteur: "midomido@bouygues.fr", objet: "J'ai envoyé ton CV à la recruteuse", body: "Salut Cindie, \n J'ai transmis ton CV à la Rh, maintenant les cartes sont entre tes mains!", isPrioritaire: true)]


struct Mails: View {
    
    var body: some View {

        NavigationView{
            VStack {
                Divider()

                ForEach(emails) { mails in
                    NavigationLink {
                        DetailsMails(emails: mails)
                    } label: {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("from: \(mails.expediteur)")
                                    .foregroundColor(.gray)
                                Text("Objet: \(mails.objet)")
                                    .fontWeight(.bold)
                                Text(mails.body)
                                    .lineLimit(2)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                            .padding(6)
                            
                            VStack(spacing: 30) {
                                
                                if mails.isPrioritaire {
                                    Image(systemName: "flag.fill")
                                        .foregroundColor(.blue)
                                }
                                
                                Image(systemName: "chevron.right")
                                
                            }
                            .padding(.trailing, 6)
                            
                        }
                        .foregroundColor(.black)
                    }
                }
                Spacer()
            }
            .navigationTitle("Mes mails")
        }
    }
}

struct Mails_Previews: PreviewProvider {
    static var previews: some View {
        Mails()
    }
}
