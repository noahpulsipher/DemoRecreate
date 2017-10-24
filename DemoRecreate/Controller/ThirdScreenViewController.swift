//
//  ThirdScreenViewController.swift
//  DemoRecreate
//
//  Created by Pulsipher, Noah on 10/16/17.
//  Copyright © 2017 CTEC. All rights reserved.

import UIKit

import AVFoundation

public class ThirdScreenViewController: UIViewController
{
    private lazy var color: ColorTools = ColorTools()
    
    private var soundPlayer: AVAudioPlayer?
    
    private var imageCounter: Int = 0
    
    private func changeImage() -> Void
    {
        if (imageCounter > 2)
        {
            imageCounter = 0
        }
        
        if (imageCounter == 0)
        {
            firstImageView.image = UIImage(named: "link")
        }
            
        else if (imageCounter == 1)
        {
            firstImageView.image = UIImage(named: "megaman")
        }
            
        else
        {
            firstImageView.image = UIImage(named: "sonic")
        }
        
        imageCounter += 1
    }
    
    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBAction func firstSliderMethod(_ sender: UISlider)
    {
        let seekTime = Double (firstSlider.value)
        soundPlayer?.currentTime = seekTime
    }
    
    private func playMusicFile () -> Void
    {
        if let isPlaying = soundPlayer?.isPlaying
        {
            if (isPlaying)
            {
                soundPlayer?.pause()
            }
            else
            {
                soundPlayer?.play()
            }
        }
//        if((soundPlayer?.isPlaying)!)
//        {
//            soundPlayer?.pause()
//        }
//        else
//        {
//            soundPlayer?.play()
//        }
    }
    
    @IBOutlet weak var firstSlider: UISlider!
    
    @IBAction func secondButtonMethod(_ sender: UIButton)
    {
        playMusicFile()
        view.backgroundColor = color.createRandomColor()
    }
    
    private func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsset(name: "smash")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                firstSlider.maximumValue = Float ((soundPlayer?.duration)!)
                Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }
            catch
            {
                print("Audio File Load Error")
            }
        }
    }
   
    @objc private func updateSlider() -> Void
    {
        firstSlider.value = Float ((soundPlayer?.currentTime)!)
    }
    
    @IBOutlet weak var secondButton: UIButton!
    
    @IBAction func firstButtonMethod(_ sender: UIButton)
    {
        changeImage()
        view.backgroundColor = color.createRandomColor()
    }
    
    @IBOutlet weak var firstButton: UIButton!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        loadAudioFile()

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
