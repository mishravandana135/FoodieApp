//
//  Registration.swift
//  FoodieApp
//
//  Created by cguser on 28/09/23.
//

import Foundation
import UIKit

class RegistrationVC: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var conformPasswordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func validation(){
        if let email = emailTF.text, let password = passwordTF.text, let username = nameTF.text, let conPassword = conformPasswordTF.text{
                        if username == ""{
                            print("Please enter username")
                            openAlert(title: "Alert", message: "Please enter username", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{_ in }])
                            print("email is not valid")
                        }else if !email.validateEmailId(){
                            openAlert(title: "Alert", message: "Please enter valid email", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{_ in }])
                            print("email is not valid")
//                        }else if !password.validatePassword(){
//                            print("Password is not valid")
                        } else{
                            if conPassword == ""{
                                print("Please confirm password")
                            }else{
                                if password == conPassword{
                                    // navigation code
                                    
                                    UserDefaults.standard.set(nameTF.text, forKey: "username")
                                    UserDefaults.standard.set(emailTF.text, forKey: "emailId")
                                    UserDefaults.standard.set(passwordTF.text, forKey: "password")
                                    
                                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
                                    self.navigationController?.pushViewController(vc, animated: true)
                                    print("Navigation code Yeah!")
                                }else{
                                    print("password does not match")
                                }
                            }
                        }
                    }else{
                        print("Please check your details")
                    }
    }
    
    
   @IBAction func signUPBtnAction(_ sender: UIButton) {
       validation()
    }
    
    @IBAction func signInBtnAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.navigationController?.pushViewController(vc, animated: true)
     }
    
}
