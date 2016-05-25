//
//  CardController.swift
//  DeckOfOneCard
//
//  Created by Ross McIlwaine on 5/25/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation

class CardController {
    
    static let drawURL: NSURL? = NSURL(string: "http://deckofcardsapi.com/api/deck/new/draw/")
    
    static func fetchCards(numberOfCards: Int, deckIdentifier: String? = nil, completion: (cards: [Card]) -> Void) {
        
        // perform network request to fetch card data
        // serialize the returned data into json
        // serialize the json into card objects
        // run completion with array of returned cards
        
        guard let url = drawURL else {
            fatalError("URL is somehow broken, this should never happen")
        }
        
        let parameters: [String: String] = ["count" : "\(numberOfCards)"]
        
        NetworkController.performRequest(url, httpMethod: .get, urlParameters: parameters, body: nil) { (data, error) in
            
            guard let data = data,
                let rawJSON = try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments),
                let json = rawJSON as? [String: AnyObject],
                let cardDictionaries = json["cards"] as? [[String: AnyObject]] else {
                    completion(cards: []); return }
            
            let cards = cardDictionaries.flatMap({Card(json:$0)})
            completion(cards: cards)
        }
    }
}
