//
//  ViewController.swift
//  YungsixToss
//
//  Created by 최윤석 on 2022/07/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tossLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tossLabel.font = .boldSystemFont(ofSize: 20)
    }
}
