//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Marcel Canhisares on 08/01/16.
//  Copyright © 2016 Azell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    

    @IBAction func onCoinTapped(sender: UIButton!) {
        if (currentTaps <= maxTaps){
            currentTaps++
            tapsLbl.text = "\(currentTaps) Taps"
        }else{
            howManyTapsTxt.text = ""
            
            tapsLbl.hidden = true
            tapBtn.hidden = true
            
            logoImg.hidden = false
            howManyTapsTxt.hidden = false
            playBtn.hidden = false
        }
        
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{
            
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playBtn.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0;
            
            tapsLbl.text = "\(currentTaps) Taps"
        }
        
        
    }
}

