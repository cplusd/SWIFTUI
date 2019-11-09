//
//  UserData.swift
//  UIDemo
//
//  Created by qilei on 2019/11/6.
//  Copyright © 2019 qilei. All rights reserved.
//

import SwiftUI
import Combine

//final class UserData: ObservableObject {
//
//  @Published  var showFavoriteOnly = false
//  @Published  var landmarks = landmarkData
//
//}
//
final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}

