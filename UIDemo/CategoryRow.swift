//
//  CategoryRow.swift
//  UIDemo
//
//  Created by qilei on 2019/11/10.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 0){
                           ForEach(self.items){landmark in
                            
                            NavigationLink(
                                destination: ContentView(
                                    landmark: landmark
                                )
                            ){
                              CategoryItem(landmark: landmark)
                            }
                            
                    }
                }
            }.frame(height: 185)
            
                        
        }
          
    }
}


struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .padding(.leading, 15)
    }
}
