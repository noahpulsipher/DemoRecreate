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
    private lazy var colorTool : ColorTools = ColorTools()

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
        textBox.textColor = .red
    }
    
    @IBAction func sliderMethod(_ sender: UISlider)
    {
        view.backgroundColor = colorTool.createRandomColor()
        firstButton.setTitleColor(colorTool.createRandomColor(), for: .normal)
        firstButton.backgroundColor = colorTool.createRandomColor()
        Slider.backgroundColor = colorTool.createRandomColor()
        textBox.backgroundColor = colorTool.createRandomColor()
        textBox.textColor = colorTool.createRandomColor()
    }
    
    @IBOutlet weak var firstButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func firstMethod(_ sender: UIButton)
    {
        view.backgroundColor = colorTool.createRandomColor()
        firstButton.setTitleColor(colorTool.createRandomColor(), for: .normal)
        firstButton.setTitleColor(colorTool.createRandomColor(), for: .normal)
    }
    
   
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
