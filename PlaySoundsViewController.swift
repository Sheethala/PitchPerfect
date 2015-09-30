//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Sheethala Swaminathan on 5/28/15.
//  Copyright (c) 2015 Sheethala Swaminathan. All rights reserved.
//

import UIKit
import AVFoundation

var audioPlayer: AVAudioPlayer!
class PlaySoundsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
            var filePathURL = NSURL.fileURLWithPath(filePath)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathURL, error: nil)
            
        }else{
            println("Sorry invalid file name")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func PlaySoundFast(sender: UIButton) {
        audioPlayer.rate = 2
        audioPlayer.enableRate = true
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }
    
    @IBAction func PlaySoundSlowly(sender: UIButton) {
        audioPlayer.rate = 0.5
        audioPlayer.enableRate = true
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }

    @IBAction func StopSound(sender: UIButton) {
        if audioPlayer.playing{
            audioPlayer.stop()
            audioPlayer.currentTime = 0
        }
        

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
