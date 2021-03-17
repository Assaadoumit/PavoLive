//
//  Screen2ViewController.swift
//  PavoLive
//
//  Created by Assaad Doumit on 17/03/2021.
//// when pushing
/// - (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
//[super pushViewController:viewController animated:animated];
//self.interactivePopGestureRecognizer.enabled = NO;
//}

import UIKit

class Screen2ViewController: UIViewController, UIGestureRecognizerDelegate {
    let textFieldColor = UIColor(red: 129/255.0, green: 29/255.0, blue: 83/255.0, alpha: 1)


    override func viewDidLoad() {
        super.viewDidLoad()
        SetUI()
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self;
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self;

    }
    

    @IBOutlet weak var TextField_Email: UITextField!
    @IBOutlet weak var TextFeild_password: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    func SetUI(){
        TextField_Email.layer.cornerRadius = 20.0
        TextField_Email.layer.borderWidth = 3.0
        TextField_Email.layer.borderColor = textFieldColor.cgColor
        let color = textFieldColor
        let Emailplaceholder = TextField_Email.placeholder ?? "Email or Password"
        TextField_Email.attributedPlaceholder = NSAttributedString(string: Emailplaceholder, attributes: [NSAttributedString.Key.foregroundColor : color])
        TextFeild_password.layer.cornerRadius = 20.0
        TextFeild_password.layer.borderWidth = 3.0
        TextFeild_password.layer.borderColor = textFieldColor.cgColor
        let Passwordplaceholder = TextFeild_password.placeholder ?? "Email or Password"
        TextFeild_password.attributedPlaceholder = NSAttributedString(string: Passwordplaceholder, attributes: [NSAttributedString.Key.foregroundColor : color])
        
        logInButton.layer.cornerRadius = 20
        signUpButton.layer.cornerRadius = 20
        signUpButton.layer.borderWidth = 3.0
        signUpButton.layer.borderColor = textFieldColor.cgColor
        
    }
    func addImageToTextFeild(){
        let emailImage = UIImage(named: "email")
        addLEftToImage(textField: TextField_Email, image: emailImage!)
    }
    @IBAction func cancelPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }

    func addLEftToImage(textField: UITextField, image:UIImage){
        let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
        leftImageView.image = image
        textField.leftView = leftImageView
        textField.leftViewMode = .always
    }
}

