//
//  RotatedBadgeSymbol.swift
//  UIDemo
//
//  Created by qilei on 2019/11/10.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
     BadgeSymbol()
        .padding(-60)
        .rotationEffect(angle, anchor: UnitPoint.bottom)
        
        
        
        
    }
}

