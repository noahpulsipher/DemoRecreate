//
//  ThirdScreenViewController.swift
//  DemoRecreate
//
//  Created by Pulsipher, Noah on 10/16/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class ThirdScreenViewController: UIViewController
{
    
    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBAction func firstSliderMethod(_ sender: UISlider)
    {
    
    }
    
    @IBOutlet weak var firstSlider: UISlider!
    
    @IBAction func secondButtonMethod(_ sender: UIButton)
    {
    
    }
    
    @IBOutlet weak var secoondButton: UIButton!
    
    
    @IBAction func firstButtonMethod(_ sender: UIButton)
    {
    
    }
    
    @IBOutlet weak var firstButton: UIButton!
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var homeButton: UIButton!
    
    @IBAction func homeButtonMethod(_ sender: UIButton)
    {
    
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
