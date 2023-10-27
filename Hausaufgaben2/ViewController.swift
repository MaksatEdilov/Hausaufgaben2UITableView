//
//  ViewController.swift
//  Hausaufgaben2
//
//  Created by Maksat Edil on 26/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    var OpenScreen: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        view.layer.cornerRadius = 50

        return view
    }()

    
    var login: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Login"
        view.font = .systemFont(ofSize: 18, weight: .bold)
        return view
    }()
    
    var Userimage: UIImageView = {
        var view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "User")
        return view
    }()
    
    var greetingSign: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = UIColor(red: 0.358, green: 0.356, blue: 0.356, alpha: 1)
        view.font = .systemFont(ofSize: 14, weight: .thin)
        view.text = "Welcome back, Rohit Takur"
        return view
    }()
    
    var GreetingImg: UIImageView = {
        var view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "MainImg")
        return view
    }()
    
    var EnterLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = UIColor(red: 0.949, green: 0.475, blue: 0.42, alpha: 1)
        view.font = .systemFont(ofSize: 17, weight: .bold)
        view.text = "Enter your mobile number"
        return view
    }()
    
    var NumberTF: UITextField = {
        var view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 0, y: 0, width: 367, height: 43)
        view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        view.layer.cornerRadius = 10
        view.placeholder = "Enter your number"
        view.textColor = .systemGray
        view.font = .systemFont(ofSize: 14, weight: .thin)
        return view
    }()
    
    var ChangeNmb: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 0, y: 0, width: 110, height: 18)
        view.textColor = .systemGray4
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.text = "Change Number ?"

        return view
    }()
    var LogBtn: UIButton = {
        var view = UIButton(type: .system)
        view.setTitleColor(UIColor.white, for: .normal)
        view.setTitle("Login", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 0, y: 0, width: 367, height: 43)
        view.layer.backgroundColor = UIColor(red: 0.949, green: 0.475, blue: 0.42, alpha: 1).cgColor
        view.layer.cornerRadius = 10
        return view
    }()
    
    var Googlepic: UIImageView = {
        var view = UIImageView()
        view.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "google")
        return view
    }()
    var GoogleLbl: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Google"
        view.frame = CGRect(x: 0, y: 0, width: 51, height: 21)
        view.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        view.font = .systemFont(ofSize: 14, weight: .heavy)
        return view
    }()
    
    var Acclbl: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 0, y: 0, width: 220, height: 18)
        view.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        view.font = .systemFont(ofSize: 12, weight: .thin)
        view.text = "You dont have an account?"
        return view
    }()
    var signUpBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Sign Up", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        view.setTitleColor(UIColor.black, for: .normal)
        view.backgroundColor = .clear
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(OpenScreen)
        setUpConstraintsForOpenScreen()
        
        view.addSubview(login)
        login.numberOfLines = 0
        setUpConstraintsForLogin()
        
        view.addSubview(Userimage)
        setUpConstraintsForUserImage()
        
        view.addSubview(greetingSign)
        setUpConstraintsForGreetingSign()
        
        view.addSubview(GreetingImg)
        setUpConstraintsForGreetingImg()
        
        view.addSubview(EnterLabel)
        setUpConstraintsForEnterLabel()
        
        view.addSubview(NumberTF)
        setUpConstraintsForNumberTF()
        
        view.addSubview(ChangeNmb)
        setUpConstraintsForChangeNmb()
        
        view.addSubview(LogBtn)
        setUpConstraintsForLogBtn()
        
        view.addSubview(Googlepic)
        setUpConstraintsForGooglepic()
        
        view.addSubview(GoogleLbl)
        setUpConstraintsForGoogleLbl()
        
        view.addSubview(Acclbl)
        setUpConstraintsForAcclbl()
        
        view.addSubview(signUpBtn)
        setUpConstraintsForSignUpBtn()
    }
    private func setUpConstraintsForOpenScreen(){
        OpenScreen.translatesAutoresizingMaskIntoConstraints = false
        OpenScreen.widthAnchor.constraint(equalToConstant: 390).isActive = true
        OpenScreen.heightAnchor.constraint(equalToConstant: 809).isActive = true
        OpenScreen.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        OpenScreen.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
       

    }
    
    
    private func setUpConstraintsForLogin(){
        login.translatesAutoresizingMaskIntoConstraints = false
        login.widthAnchor.constraint(equalToConstant: 55).isActive = true
        login.heightAnchor.constraint(equalToConstant: 23).isActive = true
        login.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:32).isActive = true
        login.topAnchor.constraint(equalTo: view.topAnchor, constant:64).isActive = true
    }

    private func setUpConstraintsForUserImage(){
        Userimage.translatesAutoresizingMaskIntoConstraints = false
        Userimage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        Userimage.heightAnchor.constraint(equalToConstant: 19).isActive = true
        Userimage.leftAnchor.constraint(equalTo: login.rightAnchor, constant: 1).isActive = true
        Userimage.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
    }
    private func setUpConstraintsForGreetingSign(){
        greetingSign.widthAnchor.constraint(equalToConstant: 177).isActive = true
            greetingSign.heightAnchor.constraint(equalToConstant: 18).isActive = true
        greetingSign.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        greetingSign.topAnchor.constraint(equalTo: login.bottomAnchor, constant: 3).isActive = true
    
    }
    private func setUpConstraintsForGreetingImg(){
        GreetingImg.widthAnchor.constraint(equalToConstant: 296).isActive = true
        GreetingImg.heightAnchor.constraint(equalToConstant: 231).isActive = true
        GreetingImg.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 57).isActive = true
        GreetingImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 155).isActive = true
    }
    
    private func setUpConstraintsForEnterLabel(){
        EnterLabel.translatesAutoresizingMaskIntoConstraints = false
        EnterLabel.widthAnchor.constraint(equalToConstant: 228).isActive = true
        EnterLabel.heightAnchor.constraint(equalToConstant: 26).isActive = true
        EnterLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 94).isActive = true
        EnterLabel.topAnchor.constraint(equalTo: GreetingImg.bottomAnchor, constant: 15).isActive = true
    }
    
    private func setUpConstraintsForNumberTF(){
        NumberTF.translatesAutoresizingMaskIntoConstraints = false
        NumberTF.widthAnchor.constraint(equalToConstant: 367).isActive = true
        NumberTF.heightAnchor.constraint(equalToConstant: 43).isActive = true
        NumberTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        NumberTF.topAnchor.constraint(equalTo: EnterLabel.bottomAnchor, constant: 31).isActive = true
    }
    private func setUpConstraintsForChangeNmb(){
        ChangeNmb.widthAnchor.constraint(equalToConstant: 110).isActive = true
        ChangeNmb.heightAnchor.constraint(equalToConstant: 18).isActive = true
        ChangeNmb.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 263).isActive = true
        ChangeNmb.topAnchor.constraint(equalTo: NumberTF.bottomAnchor, constant: 11).isActive = true
    }
    
    private func setUpConstraintsForLogBtn(){
        LogBtn.translatesAutoresizingMaskIntoConstraints = false
        LogBtn.widthAnchor.constraint(equalToConstant: 367).isActive = true
        LogBtn.heightAnchor.constraint(equalToConstant: 43).isActive = true
        LogBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        LogBtn.topAnchor.constraint(equalTo: ChangeNmb.bottomAnchor, constant: 35).isActive = true
        LogBtn.addTarget(self, action: #selector(LogBtnTapped), for: .touchUpInside)
    }
    @objc func LogBtnTapped(_ sender: UIButton) {
        var shouldNavigate = true
        if NumberTF.text?.isEmpty ?? true {
            NumberTF.layer.borderColor = UIColor.red.cgColor
            NumberTF.layer.borderWidth = 0.4
            NumberTF.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        if shouldNavigate {
            let vc = ContactViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    private func setUpConstraintsForGooglepic(){
        Googlepic.translatesAutoresizingMaskIntoConstraints = false
        Googlepic.widthAnchor.constraint(equalToConstant: 51).isActive = true
        Googlepic.heightAnchor.constraint(equalToConstant: 21).isActive = true
        Googlepic.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 135).isActive = true
        Googlepic.topAnchor.constraint(equalTo: LogBtn.bottomAnchor, constant: 45).isActive = true
    }
    private func setUpConstraintsForGoogleLbl(){
        GoogleLbl.translatesAutoresizingMaskIntoConstraints = false
        GoogleLbl.widthAnchor.constraint(equalToConstant: 51).isActive = true
        GoogleLbl.heightAnchor.constraint(equalToConstant: 21).isActive = true
        GoogleLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 173).isActive = true
        GoogleLbl.topAnchor.constraint(equalTo: LogBtn.bottomAnchor, constant: 45).isActive = true
    }
    private func setUpConstraintsForAcclbl(){
        Acclbl.translatesAutoresizingMaskIntoConstraints = false
        Acclbl.widthAnchor.constraint(equalToConstant: 220).isActive = true
        Acclbl.heightAnchor.constraint(equalToConstant: 18).isActive = true
        Acclbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 97).isActive = true
        Acclbl.topAnchor.constraint(equalTo: GoogleLbl.bottomAnchor, constant: 87).isActive = true
    }
    private func setUpConstraintsForSignUpBtn(){
        signUpBtn.translatesAutoresizingMaskIntoConstraints = false
        signUpBtn.widthAnchor.constraint(equalToConstant: 220).isActive = true
        signUpBtn.heightAnchor.constraint(equalToConstant: 18).isActive = true
        signUpBtn.leftAnchor.constraint(equalTo: Acclbl.leftAnchor, constant: 65).isActive = true
        signUpBtn.topAnchor.constraint(equalTo: GoogleLbl.bottomAnchor, constant: 87).isActive = true
    }
    
}
