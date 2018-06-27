//
//  ViewController.swift
//  calcu
//
//  Created by Fahim Khan on 6/27/18.
//  Copyright © 2018 Fahim Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var scrnNum:Double=0
    var firstNum:Double=0
    var operation=false
    var oprtr = 0
    @IBOutlet weak var show: UILabel!
    @IBAction func num(_ sender: UIButton) {
        if operation == true {
            show.text = String(sender.tag-1)
            scrnNum = Double(show.text!)!
            operation = false
        }
        else{
        show.text=show.text! + String(sender.tag-1)
        scrnNum=Double(show.text!)!
        }
    }
    @IBAction func dot(_ sender: UIButton) {
        if show.text == "" {
            show.text = "0."
            scrnNum = Double(show.text!)!
        }
        else {
            if operation == true {
                show.text = "0."
                scrnNum = Double(show.text!)!
                operation = false
            }
            else{
                show.text=show.text! + "."
                scrnNum=Double(show.text!)!
            }
        }
    }
    @IBAction func operators(_ sender: UIButton) {
        if show.text != "" && sender.tag != 11 {
            firstNum = Double(show.text!)!
            if sender.tag == 12 {
                show.text = "/"
            }
            else if sender.tag == 13 {
                show.text = "*"
            }
            else if sender.tag == 14 {
                show.text = "-"
            }
            else if sender.tag == 15 {
                show.text = "+"
            }
            oprtr = sender.tag
            operation=true
        }
        else if sender.tag == 11 {
            show.text = ""
            scrnNum = 0
            firstNum = 0
        }
    }
    @IBAction func result(_ sender: UIButton) {
        if oprtr == 12{
            show.text = String(firstNum/scrnNum)
        }
        else if oprtr == 13{
            show.text = String(firstNum*scrnNum)
        }
        else if oprtr == 14{
            show.text = String(firstNum-scrnNum)
        }
        else if oprtr == 15{
            show.text = String(firstNum+scrnNum)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

