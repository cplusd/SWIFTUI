//
//  ContentView.swift
//  UIDemo
//
//  Created by qilei on 2019/9/23.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(Edge.Set.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(Edge.Set.bottom, -130)
            
            VStack(alignment: .leading,spacing: 10 ){
                Text(landmark.name)
                .font(.title)
                
               
                HStack(alignment: .top){
                                 
                    Text(landmark.park)
                        .font(.subheadline)
                                                 
                    Spacer()
                                                                    
                    Text(landmark.state)
                        .font(.subheadline)
                }
                
            }
            .padding()
            
        Spacer()
                
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[0])
    }
}

