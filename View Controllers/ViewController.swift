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
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true

    }
    
    func setUI(){
        Button_Google.layer.cornerRadius = 20
        Button_Instagram.layer.cornerRadius = 20
        Button_SignUp.layer.cornerRadius = 30
        Button_Facebook.layer.cornerRadius = 20
        Button_SignIn.layer.cornerRadius = 30
    }
    
    @IBAction func SignIn_Pressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "Screen2ViewController") as! Screen2ViewController
        self.navigationController!.pushViewController(vc, animated: true);
    }
    
    @IBAction func SignUp_Pressed(_ sender: Any){
        let Screen3StoryBoard : UIStoryboard = UIStoryboard(name: "Screen3", bundle:nil)

        let vc = Screen3StoryBoard.instantiateViewController(identifier: "Screen3ViewController") as! Screen3ViewController
        self.navigationController!.pushViewController(vc, animated: true);
    }
    
    @IBAction func TabBar(_ sender: Any){
        let Screen3StoryBoard : UIStoryboard = UIStoryboard(name: "TabBarStoryboard", bundle:nil)
        
        let vc = Screen3StoryBoard.instantiateViewController(identifier: "TabBarController") as! TabBarController
        self.navigationController!.pushViewController(vc, animated: true);
    }
    
}

