//
//  ViewController.swift
//  SequeInCode
//
//  Created by Palliboina on 12/04/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var pictureList:[String]!
    var selectedPicture:Int!
    var rating:[Int]!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerView.delegate = self
        pickerView.dataSource = self
        pictureList = ["Family","Teddy","Mobile"]
        selectedPicture = 0
        rating = [0,0,0]
    }

    @IBAction func getPicture(_ sender: UIButton) {
        selectedPicture = pickerView.selectedRow(inComponent: 0)
        performSegue(withIdentifier: "showPicture", sender: self)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pictureList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pictureList[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! SecondViewController
        controller.rating = rating[selectedPicture]
        controller.picture = pictureList[selectedPicture]
    }
    
    @IBAction func goBack(_ segue:UIStoryboardSegue){
        let controller = segue.source as! SecondViewController
        rating[selectedPicture] = controller.rating
    }
}

