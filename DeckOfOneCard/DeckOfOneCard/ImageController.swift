//
//  ImageController.swift
//  DeckOfOneCard
//
//  Created by Ross McIlwaine on 5/25/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import UIKit

class ImageController {
    
    static func fetchImage(url: NSURL, completion: (image: UIImage?) -> Void) {
        
        NetworkController.performRequest(url, httpMethod: .get) { (data, error) in
            
            if let data = data {
                let image = UIImage(data: data)
                completion (image: image)
            }
        }
    }
    
}
