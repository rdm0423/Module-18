//
//  SearchResultController.swift
//  App Icon
//
//  Created by Ross McIlwaine on 5/24/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation

class SearchResultController {
    
    func searchResults(term: String, completion: (results: [SearchResult]?) -> Void) {
        
        // STEPS
        // - [Network Controller] create and send the request
        // - [Network Controller] wait for response
        // - serialize results into SearchResult objects
        // - run completion with resulting array
        
        
        completion(results: [])
    }
    
}