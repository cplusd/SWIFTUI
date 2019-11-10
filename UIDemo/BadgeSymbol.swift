//
//  BadgeSymbol.swift
//  UIDemo
//
//  Created by qilei on 2019/11/9.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI

struct BadgeSymbol: View {
    static let symbolColor = Color(red: 79/255, green: 79/255, blue: 191/255)
    
    var body: some View {
        GeometryReader{ geometry in
            Path{ path in
                let width  = min(geometry.size.width,geometry.size.height)
                let height = width * 0.75
                let spacing = width * 0.030
                let middle = width / 2
                let topWidth = 0.226 * width
                let topHeight = 0.488 * height
                
                path.addLines([
                      CGPoint(x: middle, y: spacing),
                      CGPoint(x: middle - topWidth, y: topHeight - spacing),
                      CGPoint(x: middle, y: topHeight / 2 + spacing),
                      CGPoint(x: middle + topWidth, y: topHeight - spacing),
                      CGPoint(x: middle, y: spacing)
                ])
                
                path.move(to: CGPoint(x: middle, y: topHeight / 2 + spacing * 3))
                               
                path.addLines([
                   CGPoint(x: middle - topWidth, y: topHeight + spacing),
                   CGPoint(x: spacing, y: height - spacing),
                   CGPoint(x: width - spacing, y: height - spacing),
                   CGPoint(x: middle + topWidth, y: topHeight + spacing),
                   CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
                ])
                
                
            }
            .fill(Self.symbolColor)
                            
            
        }
        
    }
}

