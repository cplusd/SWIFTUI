//
//  ContentView.swift
//  UIDemo
//
//  Created by qilei on 2019/9/23.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            MapView()
                .edgesIgnoringSafeArea(Edge.Set.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(Edge.Set.bottom, -130)
            
            VStack(alignment: .leading,spacing: 10 ){
            Text("Turtle Rock")
                .font(.title)
                HStack{
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                    Spacer()
                    Text("California")
                    .font(.subheadline)
                    
                }
                
            }
            .padding()
        Spacer()
                
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
