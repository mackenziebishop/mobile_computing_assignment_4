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
    
    var imageName:String
    var imageNum:Int = 0
    
    let image_array = [
        //Flower image array
        [UIImage(named: "daisy"), UIImage(named: "lilly"), UIImage(named: "marigold"), UIImage(named: "rose"), UIImage(named: "sunflower")],
        //Book image array
        [UIImage(named: "dune"), UIImage(named: "great_gatsby"), UIImage(named: "little_women"), UIImage(named: "pride_and_prejudice"), UIImage(named: "wuthering_heights")],
        //Actor image array
        [UIImage(named: "emma_watson"), UIImage(named: "meryl_streep"), UIImage(named: "morgan_freeman"), UIImage(named: "tom_hanks"), UIImage(named: "tom_holland")]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Display image at 0th index
        
        //Previous button disabled
        showPrevImagesBtn.isEnabled = false
    }
    //Flower keyword array
    let flower_keywords = ["flower", "color", "size", "petals"]
    
    //Book keyword array
    let book_keywords = ["book", "classic", "literature", "hardcover"]
    
    //Actor keyword array
    let actor_keywords = ["actor", "movie", "hero", "film"]
    
    //Topic array
    let topic_array = [["These are some of my favorite flowers that can be found locally. This search yields 5 results."],["These are some of my favorite books that range from classical literature to modern science fiction. This search yields 5 results."],["These are some of the most well-known actors and actresses of all time, spanning across different generations of movie and TV history. This search yields 5 results."]]
    
    @IBAction func onClickSearch(_ sender: Any) {
        var keyword = searchTextField.text!
        var topic = 0
        if flower_keywords.contains(keyword){
            topic = 1
            while topic == 1{
                //display images
                resultImage.image = UIImage()
                //display text
            }
        }
        switch{
        }
        
        if book_keywords.contains(searchTextField.text!){
            
        }
        switch{}
        
        if actor_keywords.contains(searchTextField.text!){
            
        }
        switch{}
    }
    
    @IBAction func onClickNext(_ sender: UIButton) {
        imageNum += 1;
        updateDetails(imageName)
        
        //Enable previous button
        showPrevImagesBtn.isEnabled = true
        
        //Reaching end of array, next button is disabled
        if(imageNum == image_array.count-1){
            //Disable next button
            showNextImagesBtn.isEnabled = false
        }
    }
    
    @IBAction func onClickPrev(_ sender: UIButton) {
        imageNum -= 1;
        updateDetails(imageName)
        
        //Enable next button
        showNextImagesBtn.isEnabled = true
        
        //At the beginning of the array, previous button is disabled
        if (imageNum == 0){
            showPrevImagesBtn.isEnabled = false;
        }
    }
    
    func updateDetails(_ imageName:String){
        resultImage.image = UIImage(named:image_array[0])
        topicInfoText.inputView = UITextView()
    }
}

s
