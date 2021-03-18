//
//  Screen3ViewController.swift
//  PavoLive
//
//  Created by Assaad Doumit on 18/03/2021.
//

import UIKit

class Screen3ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    let textFieldColor = UIColor(red: 129/255.0, green: 29/255.0, blue: 83/255.0, alpha: 1)

    
    @IBOutlet weak var TextField_Username: UITextField!
    @IBOutlet weak var TextFeild_Email: UITextField!
    @IBOutlet weak var TextFeild_Country: UITextField!
    @IBOutlet weak var TextFeild_Password: UITextField!
    @IBOutlet weak var TextFeild_ConfirmPassword: UITextField!
    @IBOutlet weak var signUp_Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self;

    }
    
    @IBAction func cancelPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self;

    }
    
    
    func setUI(){
        TextField_Username.layer.cornerRadius = 20.0
        TextField_Username.layer.borderWidth = 3.0
        TextField_Username.layer.borderColor = textFieldColor.cgColor
        let color = textFieldColor
        let usernamePlaceholder = TextField_Username.placeholder ?? "Username"
        TextField_Username.attributedPlaceholder = NSAttributedString(string: usernamePlaceholder, attributes: [NSAttributedString.Key.foregroundColor : color])
        
        TextFeild_Email.layer.cornerRadius = 20.0
        TextFeild_Email.layer.borderWidth = 3.0
        TextFeild_Email.layer.borderColor = textFieldColor.cgColor
        let emailPlaceholder = TextFeild_Email.placeholder ?? "Email"
        TextFeild_Email.attributedPlaceholder = NSAttributedString(string: emailPlaceholder, attributes: [NSAttributedString.Key.foregroundColor : color])
        
        TextFeild_Country.layer.cornerRadius = 20.0
        TextFeild_Country.layer.borderWidth = 3.0
        TextFeild_Country.layer.borderColor = textFieldColor.cgColor
        let countryPlaceholder = TextFeild_Country.placeholder ?? "Country"
        TextFeild_Country.attributedPlaceholder = NSAttributedString(string: countryPlaceholder, attributes: [NSAttributedString.Key.foregroundColor : color])
        
        TextFeild_Password.layer.cornerRadius = 20.0
        TextFeild_Password.layer.borderWidth = 3.0
        TextFeild_Password.layer.borderColor = textFieldColor.cgColor
        let Passwordplaceholder = TextFeild_Password.placeholder ?? "Password"
        TextFeild_Password.attributedPlaceholder = NSAttributedString(string: Passwordplaceholder, attributes: [NSAttributedString.Key.foregroundColor : color])
        
        TextFeild_ConfirmPassword.layer.cornerRadius = 20.0
        TextFeild_ConfirmPassword.layer.borderWidth = 3.0
        TextFeild_ConfirmPassword.layer.borderColor = textFieldColor.cgColor
        let confirmPasswordplaceholder = TextFeild_ConfirmPassword.placeholder ?? "Confirm Password"
        TextFeild_ConfirmPassword.attributedPlaceholder = NSAttributedString(string: confirmPasswordplaceholder, attributes: [NSAttributedString.Key.foregroundColor : color])
        
        signUp_Button.layer.cornerRadius = 20
       
    }
    
}
