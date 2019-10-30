//
//  LandmarkRow.swift
//  UIDemo
//
//  Created by qilei on 2019/10/27.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    //property
    var landmark: Landmark
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmard[0])
    }
}
