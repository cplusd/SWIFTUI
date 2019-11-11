//
//  LandmarkList.swift
//  UIDemo
//
//  Created by qilei on 2019/11/2.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI


struct LandmarkList: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: ContentView(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
    }
}
