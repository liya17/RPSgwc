//
//  PickViewController.swift
//  GWCproj
//
//  Created by Liya Wu on 4/26/18.
//  Copyright © 2018 Liya Wu. All rights reserved.
//

import UIKit

class PickViewController: UIViewController {

    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var compPlay: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var again: UILabel!
    @IBOutlet weak var againYes: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        again.isHidden = true
        againYes.isHidden = true
        compPlay.isHidden = true

        // Do any additional setup after loading the view.
    }

    @IBAction func rockPushed(_ sender: Any) {
        //chosen = "rock"
        
        let array = ["rock", "paper", "scissors"]
        let RandomWord = Int(arc4random_uniform(UInt32(array.count)))
        compPlay.text = array[RandomWord]
        compPlay.isHidden = false
        
        if(compPlay.text == "rock"){
            result.text = "tie"
            again.isHidden = true
            againYes.isHidden = true
        }
        
        if(compPlay.text == "scissors"){
            result.text = "YOU WIN!"
            rock.isEnabled = false
            paper.isEnabled = false
            scissors.isEnabled = false
            again.text = "play again?"
            again.isHidden = false
            againYes.isHidden = false
        }
        
        if(compPlay.text == "paper"){
            result.text = "You lose :("
            rock.isEnabled = false
            rock.isEnabled = false
            paper.isEnabled = false
            scissors.isEnabled = false
            again.isHidden = false
            againYes.isHidden = false
        }
        
    }
    
    
    @IBAction func paperPushed(_ sender: Any) {
        //chosen = "paper"
        let array = ["rock", "paper", "scissors"]
        let RandomWord = Int(arc4random_uniform(UInt32(array.count)))
        compPlay.text = array[RandomWord]
        compPlay.isHidden = false
        
        if(compPlay.text == "paper"){
            result.text = "tie"
            again.isHidden = true
            againYes.isHidden = true
        }
        
        if(compPlay.text == "rock"){
            result.text = "YOU WIN!"
            rock.isEnabled = false
            paper.isEnabled = false
            scissors.isEnabled = false
            again.text = "play again?"
            again.isHidden = false
            againYes.isHidden = false
        }
        
        if(compPlay.text == "scissors"){
            result.text = "You lose :("
            rock.isEnabled = false
            rock.isEnabled = false
            paper.isEnabled = false
            scissors.isEnabled = false
            again.isHidden = false
            againYes.isHidden = false
        }
    }
    
    @IBAction func scissorsPushed(_ sender: Any) {
        //chosen = "scissors"
        let array = ["rock", "paper", "scissors"]
        let RandomWord = Int(arc4random_uniform(UInt32(array.count)))
        compPlay.text = array[RandomWord]
        compPlay.isHidden = false
        
        if(compPlay.text == "scissors"){
            result.text = "tie"
            again.isHidden = true
            againYes.isHidden = true
        }
        
        if(compPlay.text == "paper"){
            result.text = "YOU WIN!"
            rock.isEnabled = false
            paper.isEnabled = false
            scissors.isEnabled = false
            again.text = "play again?"
            again.isHidden = false
            againYes.isHidden = false
        }
        
        if(compPlay.text == "rock"){
            result.text = "You lose :("
            rock.isEnabled = false
            rock.isEnabled = false
            paper.isEnabled = false
            scissors.isEnabled = false
            again.isHidden = false
            againYes.isHidden = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
