//
//  ViewController.swift
//  Vat Sub
//
//  Created by Alberto Giambone on 27/11/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var backGroundPriceLabel: UILabel!
    
    @IBOutlet weak var vatButton: UIButton!
    
    
    
    var pickerVat = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backGroundPriceLabel.layer.masksToBounds = true
        backGroundPriceLabel.layer.cornerRadius = 15
        
        vatButton.titleLabel?.textColor = .white
        vatButton.setTitle(UserDefaults.standard.object(forKey: "vatValue") as? String ?? "0%", for: .normal)    }

    //MARK: Picker
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerVat.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return String("\(pickerVat[row])%")
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selected = pickerVat[row]
        picker.removeFromSuperview()
        UserDefaults.standard.set(selected, forKey: "vatValue")
        
        vatButton.setTitle(UserDefaults.standard.object(forKey: "vatValue") as? String ?? "0%", for: .normal)
        //vatButton.titleLabel?.text = UserDefaults.standard.object(forKey: "vatValue") as? String ?? "0%"
        
        print(UserDefaults.standard.object(forKey: "vatValue") as? String ?? "")
        
    }
    
    //MARK: Service VAR
    
    var priceVatIncluded = [String]()
    

    //MARK: Connection
    
    @IBAction func ZeroTapped(_ sender: UIButton) {
        
        if priceVatIncluded.isEmpty == true {
            priceVatIncluded.append("0")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }else{
            priceVatIncluded.append("0")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }
    }
    
    @IBAction func OneTapped(_ sender: UIButton) {
        
        if priceVatIncluded.isEmpty == true {
            priceVatIncluded.append("1")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }else{
            priceVatIncluded.append("1")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }
    }
    
    @IBAction func TwoTapped(_ sender: UIButton) {
        
        if priceVatIncluded.isEmpty == true {
            priceVatIncluded.append("2")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }else{
            priceVatIncluded.append("2")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }
    }
    
    @IBAction func ThreeTapped(_ sender: UIButton) {
        
        if priceVatIncluded.isEmpty == true {
            priceVatIncluded.append("3")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }else{
            priceVatIncluded.append("3")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }
    }
    
    @IBAction func ForTapped(_ sender: UIButton) {
        
        if priceVatIncluded.isEmpty == true {
            priceVatIncluded.append("4")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }else{
            priceVatIncluded.append("4")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }
    }
    
    @IBAction func FiveTapped(_ sender: UIButton) {
        
        if priceVatIncluded.isEmpty == true {
            priceVatIncluded.append("5")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }else{
            priceVatIncluded.append("5")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }
    }
    
    @IBAction func SixTapped(_ sender: UIButton) {
        
        if priceVatIncluded.isEmpty == true {
            priceVatIncluded.append("6")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }else{
            priceVatIncluded.append("6")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }
    }
    
    @IBAction func SevenTapped(_ sender: UIButton) {
        
        if priceVatIncluded.isEmpty == true {
            priceVatIncluded.append("7")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }else{
            priceVatIncluded.append("7")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }
    }
    
    @IBAction func HeightTapped(_ sender: UIButton) {
        
        if priceVatIncluded.isEmpty == true {
            priceVatIncluded.append("8")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }else{
            priceVatIncluded.append("8")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }
    }
    
    @IBAction func NineTapped(_ sender: UIButton) {
        
        if priceVatIncluded.isEmpty == true {
            priceVatIncluded.append("9")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }else{
            priceVatIncluded.append("9")
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }
    }
    
    @IBAction func DelTapped(_ sender: UIButton) {
        
        if priceVatIncluded.isEmpty == true {
            backGroundPriceLabel.text = "0"
        }else{
            priceVatIncluded.removeLast()
            backGroundPriceLabel.text = priceVatIncluded.joined()
        }
    }
    
    //MARK: Action
 
    var picker = UIPickerView()
    
    @IBAction func vatButtonTapped(_ sender: UIButton) {
        
        picker = UIPickerView.init()
        picker.delegate = self
        picker.dataSource = self
        picker.layer.cornerRadius = 10
        picker.layer.borderWidth = 1.5
        picker.layer.borderColor = CGColor(gray: 3, alpha: 1)
        picker.backgroundColor = UIColor.systemGray3
        picker.setValue(UIColor.black, forKey: "textColor")
        picker.autoresizingMask = .flexibleWidth
        picker.contentMode = .center
        picker.frame = CGRect.init(x: (UIScreen.main.bounds.size.width / 2) - 150, y: (UIScreen.main.bounds.size.height / 2) - 100, width: 300, height: 150)
           self.view.addSubview(picker)
    }
    
    
    
    
}
