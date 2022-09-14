//
//  SignUpController.swift
//  KriticaSwiftAssignment6
//
//  Created by EKbana on 14/09/2022.
//

import UIKit

class SignUpController: UIViewController {
    
    //MARK: - outlets
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var scrollView: UIView!
    
    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .backgroundColor
        scrollView.backgroundColor = .backgroundColor
        continueButton.backgroundColor = .buttonBackgroundColor
        
        // Do any additional setup after loading the view.
        passwordTextfield.rightViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(named: "eye")
        imageView.image = image
        passwordTextfield.rightView = imageView
    }
    
}
