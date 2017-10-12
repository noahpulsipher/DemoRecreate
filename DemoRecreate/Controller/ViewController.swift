//
//  ViewController.swift
//  DemoRecreate
//
//  Created by Pulsipher, Noah on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var Slider: UISlider!
    
    @IBOutlet weak var firstSwitch: UISwitch!
    
    @IBOutlet weak var textBox: UITextField!
    
    @IBAction func switchMethod(_ sender: UISwitch)
    {
        view.backgroundColor = .black
        firstButton.setTitleColor(.black, for: .normal)
        firstButton.backgroundColor = .black
        Slider.backgroundColor = .black
        textBox.backgroundColor = .black
        textBox.textColor = .black
    }
    @IBAction func sliderMethod(_ sender: UISlider)
    {
        view.backgroundColor = createRandomColor()
        firstButton.setTitleColor(createRandomColor(), for: .normal)
        firstButton.backgroundColor = createRandomColor()
        Slider.backgroundColor = createRandomColor()
        textBox.backgroundColor = createRandomColor()
        textBox.textColor = createRandomColor()
    }
    
    @IBOutlet weak var firstButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func firstMethod(_ sender: UIButton)
    {
        view.backgroundColor = createRandomColor()
        firstButton.setTitleColor(createRandomColor(), for: .normal)
    }
    
    private func createRandomColor() -> UIColor
    {
        //Colors are CGFloat
        let newColor: UIColor
        let redValue: CGFloat = CGFloat (Double(arc4random_uniform(256)) / 255.00)
        let greenValue: CGFloat = CGFloat (Double(arc4random_uniform(256)) / 255.00)
        let blueValue: CGFloat = CGFloat (Double(arc4random_uniform(256)) / 255.00)
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1.0))
        return newColor
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
