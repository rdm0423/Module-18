//
//  ViewController.swift
//  DeckOfOneCard
//
//  Created by Ross McIlwaine on 5/25/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func fetchButtonTapped(sender: AnyObject) {
        
        CardController.fetchCards(1) { (cards) in
            
            guard let card = cards.first else {
                return
            }
            
            ImageController.fetchImage(card.imageURL, completion: { (image) in
                
                dispatch_async(dispatch_get_main_queue(), { 
                    self.cardImageView.image = image
                })
                
            })
        }
    }
}





