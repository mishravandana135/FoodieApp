//
//  LoginVC.swift
//  FoodieApp
//
//  Created by cguser on 28/09/23.
//

import Foundation

import UIKit

class LoginVC: UIViewController {
    
    
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
        fileprivate func validationCode() {
        
            if let email = emailTF.text, let password = passwordTF.text{
                if !email.validateEmailId(){
                    openAlert(title: "Alert", message: "Email address not found.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                        print("Okay clicked!")
                    }])
//                }else if !password.validatePassword(){
                }else if password.isEmpty{
                    openAlert(title: "Alert", message: "Please enter valid password", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                        print("Okay clicked!")
                    }])
                }else{
                    let emailToCheck = UserDefaults.standard.string(forKey: "emailId")
                    let passwordToCheck = UserDefaults.standard.string(forKey: "password")
                    if email == emailToCheck{
                        if password == passwordToCheck {
                            print("susses")
                        }else{
                            openAlert(title: "Alert", message: "password not matched", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                                print("Okay clicked!")
                            }])
                        }
                        
                    }else{
                        openAlert(title: "Alert", message: "no such user", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                            print("Okay clicked!")
                        }])
                    }
                    // Navigation - Home Screen
                }
            }else{
                openAlert(title: "Alert", message: "Please add detail.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay clicked!")
                }])
            }
        
    }
    
    @IBAction func signInBtnAction(_ sender: UIButton) {
        validationCode()
    }
    
    @IBAction func signUPBtnAction(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RegistrationVC") as! RegistrationVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
