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
    
    @State var showingProfile = false
    
    
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
                
                NavigationLink(destination: LandmarkList()){
                    Text("See All")
                }
                
              }
            .navigationBarTitle(Text("Featured"))
            .navigationBarItems(trailing: self.profileButton)
            .sheet(isPresented: $showingProfile){
                Text("User profile")
            }
        }

    }
    
    
    var profileButton: some View {
        
      
        Button(action: {
            self.showingProfile.toggle()
        }){
            Image(systemName: "person.crop.circle")
            .accessibility(label: Text("User Profile"))
            .padding()
        }
        
        
        
    }

}



struct FeaturedLandmarks:View{
    var landmark: [Landmark]
    var body: some View {
        landmark[0].image.resizable()
    }
    
}
