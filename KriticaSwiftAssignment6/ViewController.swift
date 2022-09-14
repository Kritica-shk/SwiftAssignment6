//
//  ViewController.swift
//  KriticaSwiftAssignment6
//
//  Created by EKbana on 14/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - outlets
    @IBOutlet weak var signin: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastname: UITextField!
    
    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .backgroundColor
        loginButton.backgroundColor = .buttonBackgroundColor
        signin.textColor = .SigninLabelBackgroundColor
        nameTextField.backgroundColor = .textFieldbackgroundColor
        lastname.backgroundColor = .textFieldbackgroundColor

        // Do any additional setup after loading the view.
        let tabGuster = UITapGestureRecognizer(target: self, action: #selector(actionOnImage(_:)))
                signupLabel.isUserInteractionEnabled = true
                signupLabel.addGestureRecognizer(tabGuster)
    }
}

//MARK: - methods
extension ViewController {
    @objc func actionOnImage(_ sender: UITapGestureRecognizer) {
            let stordboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = stordboard.instantiateViewController(withIdentifier: "SignupController")
            navigationController?.pushViewController(controller, animated: true)
        }
}

