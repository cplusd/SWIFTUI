//
//  Data.swift
//  UIDemo
//
//  Created by qilei on 2019/10/26.
//  Copyright © 2019 qilei. All rights reserved.
//
import UIKit
import CoreLocation
import SwiftUI

let landmarkData: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    //尝试获取文件
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
        else{
            fatalError("Could not find \(fileName) from main bundle")
    }
      
    //load data
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Could not load \(fileName) from main bundle:\n \(error)")
    }
    
    //docode data
    do{
        let decoder=JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Counld not parse \(fileName) as \(T.self):\n\(error)")
    }
    
    
}
final class ImageStore{
    typealias _ImageDictionary = [String: CGImage]
    
    fileprivate var images: _ImageDictionary = [:]
    fileprivate static var scale = 2
    static var shared = ImageStore()
    
    func image(name: String) -> Image {
        let index = _guaranteeImage(name: name)
        return Image(images.values[index], scale: CGFloat(ImageStore.scale), label: Text(verbatim: name))
    }
    
    static func loadImage(name: String) -> CGImage
    {
        guard
            let url = Bundle.main.url(forResource: name, withExtension: "jpg"),
            let imageSource = CGImageSourceCreateWithURL(url as NSURL, nil),
            let image = CGImageSourceCreateImageAtIndex(imageSource, 0, nil)
        else {
            fatalError("Counld not load image \(name).jpg from main bundle")
        }
        return image
    }
    
    
    fileprivate func _guaranteeImage(name: String)-> _ImageDictionary.Index
    {
        if let index = images.index(forKey: name)
        {
            return index
        }
        
        images[name] = ImageStore.loadImage(name: name)
        return images.index(forKey: name)!
    }
    
    
    
    
}











