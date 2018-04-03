//
//  AnimalChooserViewController.swift
//  CustomPicker
//
//  Created by user135477 on 4/3/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class AnimalChooserViewController: UIViewController {

    let kComponentCount: Int = 2
    let kAnimalComponent: Int = 0
    let kSoundComponent: Int = 1
    
    var animalNames:[String] = []
    var animalSounds:[String] = []
    var animalImages:[UIImageView] = []
    
    @IBAction func dismissAnimalChooser(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        animalNames = ["Mouse","Goose","Cat","Dog","Snake","Bear","Pig"]
        animalSounds = ["Oink","Rawr","Ssss","Roof","Meow","Honk","Squek"]
        animalImages = [
            UIImageView(image:UIImage(named:"mouse.png")),
            UIImageView(image:UIImage(named:"goose.png")),
            UIImageView(image:UIImage(named:"cat.png")),
            UIImageView(image:UIImage(named:"dog.png")),
            UIImageView(image:UIImage(named:"snake.png")),
            UIImageView(image:UIImage(named:"bear.png")),
            UIImageView(image:UIImage(named:"pig.png"))
        ]
        //UIImageView(image:UIImage(named:".png")),
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
