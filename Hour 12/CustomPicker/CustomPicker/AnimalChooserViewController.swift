//
//  AnimalChooserViewController.swift
//  CustomPicker
//
//  Created by user135477 on 4/3/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class AnimalChooserViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    //Protocol Stubs UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return kComponentCount
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component==kAnimalComponent{
            return animalNames.count
            
        }else{
            return animalSounds.count
            
        }
    }
    
    //Protocol Stubs UIPickerViewDelegate
    func pickerView(_ pickerView: UIPickerView, viewForRow row:Int, forComponent component: Int, reusing view: UIView?)-> UIView{
        if component == kAnimalComponent{
            let chosenImageView: UIImageView = animalImages[row]
            let workaroundImageView: UIImageView = UIImageView(frame: chosenImageView.frame)
            workaroundImageView.backgroundColor = UIColor(patternImage: chosenImageView.image!)
            return workaroundImageView
            
            
        }else{
            //let soundLabel: UILabel = UILabel(frame: CGRectMake(0,0,100,32))
            let soundLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 32))
            soundLabel.backgroundColor = UIColor.clear
            soundLabel.text = animalSounds[row]
            return soundLabel
        }
        
    }
    
    func pickerView(_ pickerView:UIPickerView, rowHeightForComponent component: Int)-> CGFloat{
        return 55.0
        
    }
    
    func pickerView(_ pickerView:UIPickerView, widthForComponent component: Int)-> CGFloat{
        
        if component == kAnimalComponent{
            return 75.0;
            
        }else{
            return 150.0
            
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        let initialView: ViewController = presentingViewController as!ViewController
        
        if component==kAnimalComponent{
            let chosenSound: Int = pickerView.selectedRow(inComponent: kSoundComponent)
            initialView.displayAnimal(animalNames[row],withSound: animalsSounds[chosenSound],fromComponent: "the Animal")
        }else{
            
            let chosenAnimal: Int = pickerView.selectedRow(inComponent: kAnimalComponent)
            initialView.displayAnimal(chosenAnimal: animalNames[chosenAnimal], withSound: [row], fromComponent: "the Sound")
        }
        
        
    }
    
    
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
