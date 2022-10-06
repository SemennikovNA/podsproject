//  ViewController.swift
//  Podtestpoject
//
//  Created by rezra on 06.10.2022.
import SnapKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createdUi()
    }
    
    func createdUi() {
        view.backgroundColor = UIColor(red: 78/255, green: 196/255, blue: 230/255, alpha: 1)
        
        let label = UILabel()
        label.text = "Welcome😉"
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = UIColor(red: 243/255, green: 238/255, blue: 232/255, alpha: 1)
        view.addSubview(label)
        label.snp.makeConstraints { maker in
            maker.left.equalToSuperview().inset(30)
            maker.top.equalToSuperview().inset(350)
        }
        
        let extraLabel = UILabel()
        extraLabel.text = "This project write on snapkit🥳"
        extraLabel.font = UIFont.systemFont(ofSize: 20)
        extraLabel.textColor = UIColor(red: 243/255, green: 238/255, blue: 232/255, alpha: 1)
        view.addSubview(extraLabel)
        extraLabel.snp.makeConstraints { maker in
            maker.left.right.equalToSuperview().inset(30)
            maker.top.equalTo(label).inset(70)
        }
        
        let button = UIButton(type: UIButton.ButtonType.system)
        button.backgroundColor = UIColor(red: 217/255, green: 198/255, blue: 104/255, alpha: 1)
        button.setTitle("Get your username", for: .normal)
        button.setTitleColor(UIColor(red: 31/255, green: 31/255, blue: 36/255, alpha: 1), for: .normal)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        view.addSubview(button)
        button.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(250)
            maker.bottom.equalToSuperview().inset(100)
            maker.height.equalTo(40)
        }
    }
 
    @objc private func buttonPressed() {
        let secondVC = SecondViewController()
        modalPresentationStyle = .fullScreen
        present(secondVC, animated: true, completion: nil)
    }
     
}


class SecondViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemMint
        createdBackButton()
    }
    
    func createdBackButton() {
        
        let label = UILabel()
        label.text = "Hi baby, i love you and miss you 💞"
        label.font = UIFont.systemFont(ofSize: 26)
        view.addSubview(label)
        label.snp.makeConstraints { maker in
            maker.left.equalTo(view.bounds.midX / 2 - 90)
            maker.top.equalToSuperview().inset(300)
        }
        
        let backButton = UIButton()
        backButton.backgroundColor = UIColor(red: 217/255, green: 198/255, blue: 104/255, alpha: 1)
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(UIColor(red: 31/255, green: 31/255, blue: 36/255, alpha: 1), for: .normal)
        backButton.layer.cornerRadius = 20
        backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
        view.addSubview(backButton)
        backButton.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(200)
            maker.bottom.equalToSuperview().inset(200)
            maker.height.equalTo(40)
        }
    }
     
    @objc private func backButtonPressed() {
         dismiss(animated: true, completion: nil)
    }
}
