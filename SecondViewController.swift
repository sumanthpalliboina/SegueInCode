//
//  SecondViewController.swift
//  SequeInCode
//
//  Created by Palliboina on 12/04/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    var rating:Int = 0
    var picture:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = Float(rating)
        pictureView.image = UIImage(named: picture.lowercased())
    }
    
    @IBAction func changeRating(_ sender: UISlider) {
        let value = round(sender.value)
        slider.value = value
        rating = Int(value)
    }
    
    /* ctrl+click on exit icon and ctrl+left touch pad+ drag unwind segue method to second view controller icon */
    @IBAction func discard(_ sender: UIButton) {
        performSegue(withIdentifier: "goBack", sender: self)
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
