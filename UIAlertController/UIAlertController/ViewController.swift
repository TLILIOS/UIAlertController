//
//  ViewController.swift
//  UIAlertController
//
//  Created by HTLILI on 14/05/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnAlertView(_ sender: UIButton) {
        showAlertView()
    }
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
        showActionSheet()
    }
    func showAlertView() {
        let alert = UIAlertController(title: "Title", message: "My alert Message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Action 1", style: .default, handler: { action in
            print("Action 1 Clicked")
        }))
        alert.addAction(UIAlertAction(title: "Action 2", style: .cancel, handler: nil))
     
        alert.addAction(UIAlertAction(title: "Action 3", style: .destructive, handler: { action in
            let name = alert.textFields![0]
            print("Action 3, Name: \(name.text ?? "Tape your namde please")")
        }))
        alert.addTextField { name in
            name.placeholder = "Name"
        }
       present(alert, animated: true, completion: nil)
    }
    func showActionSheet() {
        let alert = UIAlertController(title: "Title", message: "My action sheet Message", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Action1", style: .default, handler: { action in
            print("Action 1 Default Style")
        }))
        alert.addAction(UIAlertAction(title: "Action2", style: .destructive, handler: { action in
            print("Action2, Destructive Style")
        }))
        alert.addAction(UIAlertAction(title: "Action3", style: .cancel, handler: { action in
            print("Action3, Cancel Style!!!")
        }))
        present(alert, animated: true, completion: nil)
        }
    }


