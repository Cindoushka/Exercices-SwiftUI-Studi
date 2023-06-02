//
//  testPhotos.swift
//  TestsStudi
//
//  Created by Cindy Bajoni on 02/06/2023.
//

import SwiftUI

struct testPhotos: View {
    
    @State var isDisableArray = [true, false, true]

    var body: some View {
        List {
        
            imageCell(imageName: "cindie", imageText: "Test 1", isDisabled: $isDisableArray[0])
            imageCell(imageName: "cindie", imageText: "Test 2", isDisabled: $isDisableArray[1])
            imageCell(imageName: "cindie", imageText: "Test 3", isDisabled: $isDisableArray[2])
            imageCell(imageName: "cindie", imageText: "Test 4", isDisabled: $isDisableArray[2])
            imageCell(imageName: "cindie", imageText: "!!!!!!", isDisabled: $isDisableArray[1])


        }    }
}

struct testPhotos_Previews: PreviewProvider {
    static var previews: some View {
        testPhotos()
    }
}
