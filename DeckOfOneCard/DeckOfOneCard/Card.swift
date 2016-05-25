//
//  Card.swift
//  DeckOfOneCard
//
//  Created by Ross McIlwaine on 5/25/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation

typealias JSON = [String: AnyObject]

private let valueKey = "value"
private let suitKey = "suit"
private let imageURLKey = "image"

struct Card {
    let value: String
    let suit: String
    let imageURL: NSURL
    
    init?(json: JSON) {
        guard let value = json[valueKey] as? String,
            let suit = json[suitKey] as? String,
            let imageURLString = json[imageURLKey] as? String,
            let imageURL = NSURL(string: imageURLString) else {
                return nil
        }
        self.value = value
        self.suit = suit
        self.imageURL = imageURL
    }
}