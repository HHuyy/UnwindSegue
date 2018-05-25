//
//  ViewController.swift
//  UnwindSegue
//
//  Created by tham gia huy on 5/5/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class MasterViewcontroller: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? DetailViewController else { return }
       detailViewController.name = inputTextField.text
    }
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard let detailViewCOntroller = unwindSegue.source as? DetailViewController else { return }
        inputTextField.text = detailViewCOntroller.name
    }

}

