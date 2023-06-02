//
//  imageCell.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 30/05/2023.
//

import SwiftUI

struct imageCell: View {
    
    let imageName: String
    let imageText: String
     @Binding var isDisabled: Bool
     
     var body: some View {
         HStack {
             Image(imageName)
                 .resizable()
                 .frame(width: 100, height: 100)
                 .scaledToFill()
                 .shadow(radius: 8)
//                 .padding(6)
             
             Text(imageText)
                 .font(.title3)
                 .fontWeight(.thin)
             Spacer()
             if isDisabled {
                 Image(systemName: "heart")
                     .padding(4)
                     .font(.title2)
             } else {
                 Image(systemName: "heart.fill")
                     .foregroundColor(.red)
                     .font(.title2)
                     .padding(4)
             }
         }.onTapGesture {
             isDisabled.toggle()
         }
     }

}

struct imageCell_Previews: PreviewProvider {
    
    @State static var isDisabled = true
    
    static var previews: some View {
        imageCell(imageName: "cindie", imageText: "cindie", isDisabled: $isDisabled)
    }
}
