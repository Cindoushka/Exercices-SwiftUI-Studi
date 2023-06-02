//
//  TestAnim.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 31/05/2023.
//

import SwiftUI

struct TestAnim: View {
    
    var texte = "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
    
    @State var isAnimated = false
    
    var body: some View {
        VStack(spacing: 40) {
            Text(texte)
                .padding()
                .rotationEffect(.degrees(isAnimated ? 90 : 0))
                .scaleEffect(isAnimated ? 1.5 : 1)
                .lineLimit(isAnimated ? nil : 2)
                .animation(.easeInOut)


            
            Button {
                isAnimated.toggle()
            } label: {
                Image(systemName: "flag.fill")
            }
        }
    }
}

struct TestAnim_Previews: PreviewProvider {
    static var previews: some View {
        TestAnim()
    }
}
