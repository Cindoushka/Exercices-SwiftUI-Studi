//
//  GestureTests.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 31/05/2023.
//

import SwiftUI

struct GestureTests: View {
    
    @State var diameter: CGFloat = 100
    
    @State var isDisable = false
    var body: some View {

        VStack(spacing: 100) {
            Circle()
                .frame(width: diameter)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let newDiameter = abs(value.location.y)
                            diameter = newDiameter
                        }
                )
            
     
                HStack {
                    Image(systemName: "pencil.circle")
                        .font(.system(size:60))
                        .foregroundColor(.white)
                    
                    if isDisable {
                        Text("Edit")
                            .foregroundColor(.white)
                            .font(.system(size: 50))
                    }
                        
                }
                .padding()
                .background(.red)
                .cornerRadius(30)
                .onTapGesture {
                isDisable.toggle()
            }
                .animation(.easeInOut)
        }
        
    }
}

struct GestureTests_Previews: PreviewProvider {
    static var previews: some View {
        GestureTests()
    }
}
