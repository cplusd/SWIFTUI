//
//  CircleImage.swift
//  UIDemo
//
//  Created by qilei on 2019/9/24.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("vara")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(color: .gray, radius: 10, x: 0, y: 0)

    }

}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
