//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Sheethala Swaminathan on 5/11/15.
//  Copyright (c) 2015 Sheethala Swaminathan. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController {
    @IBOutlet weak var RecordingAudio: UILabel!
    @IBOutlet weak var StopButton: UIButton!
    @IBOutlet weak var RecordButton: UIButton!
    
    var audioRecorder: AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        StopButton.hidden = true
        RecordButton.enabled = true
    }

    @IBAction func RecordAudio(sender: UIButton) {
        //TODO record audio
        //TODO have something that shows that the audio is recording
        RecordingAudio.hidden = false
        StopButton.hidden = false
        RecordButton.enabled = false
        
        println("I'm recording")
    }
    
    @IBAction func stopButton(sender: UIButton){}
    
    
}

