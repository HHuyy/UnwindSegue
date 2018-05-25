//
//  DetailViewController.swift
//  UnwindSegue
//
//  Created by tham gia huy on 5/5/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var name : String?
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if name != nil {
        nameText.text = name
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        name = nameText.text
    }

}
