//
//  ViewController.swift
//  PavoLive
//
//  Created by Assaad Doumit on 17/03/2021.
//

import UIKit
//import MaterialComponents.MaterialBottomAppBar

class ViewController: UIViewController {
    
    @IBOutlet weak var Button_SignUp: UIButton!
    @IBOutlet weak var Button_SignIn: UIButton!
    @IBOutlet weak var Button_Facebook: UIButton!
    @IBOutlet weak var Button_Instagram: UIButton!
    @IBOutlet weak var Button_Google: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true

        setUI()
    }
    
    func setUI(){
        Button_Google.layer.cornerRadius = 20
        Button_Instagram.layer.cornerRadius = 20
        Button_SignUp.layer.cornerRadius = 30
        Button_Facebook.layer.cornerRadius = 20
        Button_SignIn.layer.cornerRadius = 30
    }
    

}

