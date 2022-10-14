//
//  ViewController.swift
//  Bishop_SearchApp
//
//  Created by Bishop,Mackenzie N on 10/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var searchButtonAction: UIButton!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var showNextImagesBtn: UIButton!
    
    @IBOutlet weak var showPrevImagesBtn: UIButton!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var array = [
        //Flower image array
        [UIImage(named: "daisy"), UIImage(named: "lilly"), UIImage(named: "marigold"), UIImage(named: "rose"), UIImage(named: "sunflower")],
        //Book image array
        [UIImage(named: "dune"), UIImage(named: "great_gatsby"), UIImage(named: "little_women"), UIImage(named: "pride_and_prejudice"), UIImage(named: "wuthering_heights")],
        //Actor image array
        [UIImage(named: "emma_watson"), UIImage(named: "meryl_streep"), UIImage(named: "morgan_freeman"), UIImage(named: "tom_hanks"), UIImage(named: "tom_holland")]
    ]
    //Flower keyword array
    var flower_keywords = ["flower", "color", "size", "petals"]
    
    //Book keyword array
    var book_keywords = ["book", "classic", "literature", "hardcover"]
    
    //Actor keyword array
    var actor_keywords = ["actor", "movie", "hero", "film"]
}

