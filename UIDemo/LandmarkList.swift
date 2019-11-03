//
//  LandmarkList.swift
//  UIDemo
//
//  Created by qilei on 2019/11/2.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly: Bool = false
    
    var body: some View {
        NavigationView{
            
            
            ForEach(landmarkData){ item in
                if !self.showFavoritesOnly || item.isFavorite {
                
                    NavigationLink(destination: ContentView(landmark: item)){
                             LandmarkRow(landmark: item)
                             }
                }
                   
            }
                        
            .navigationBarTitle(Text("Landmarks"))
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XR"], id: \.self){ deviceName in
        LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
        

        
    }
}
