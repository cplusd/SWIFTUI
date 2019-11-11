//
//  CategoryHome.swift
//  UIDemo
//
//  Created by qilei on 2019/11/10.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var categories: [String: [Landmark]]{
        Dictionary(grouping: landmarkData, by: {$0.category.rawValue})
        
    }
    
    var featured: [Landmark] {
        landmarkData.filter {$0.isFeatured}
    }
    
    var body: some View {
        NavigationView{
            List {
                
                FeaturedLandmarks(landmark: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                

            ForEach(categories.keys.sorted(), id: \.self) { key in
                CategoryRow(categoryName: key, items: self.categories[key]!)
                }
            .listRowInsets(EdgeInsets())
                
              }
            .navigationBarTitle(Text("Featured"))
            
            
            
        
    
        
    }
}
}



struct FeaturedLandmarks:View{
    var landmark: [Landmark]
    var body: some View {
        landmark[0].image.resizable()
    }
    
}
