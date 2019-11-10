//
//  Badge.swift
//  UIDemo
//
//  Created by qilei on 2019/11/9.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 8
    
    
    var badgeSymbol : some View {
        
        ForEach(0..<Self.rotationCount) {i in
            RotatedBadgeSymbol(angle: .degrees(Double(i)/Double(Self.rotationCount))*360.0)
        }
        .opacity(0.5)
        
        
    }
    
    var body: some View {
             
        ZStack{
            BadgeBackground()
            
            GeometryReader { geometry in
            self.badgeSymbol
                .scaleEffect(1/4.0, anchor: .top)
                .position(x: geometry.size.width/2, y: (3/4.0)*geometry.size.height)

            }
            
        }
    .scaledToFit()
        
        
        
    }
}


