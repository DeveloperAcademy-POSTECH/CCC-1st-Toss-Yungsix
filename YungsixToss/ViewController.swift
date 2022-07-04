//
//  ViewController.swift
//  YungsixToss
//
//  Created by 최윤석 on 2022/07/02.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView1.delegate = self
        tableView1.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Bank.banks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView1.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? BankTableViewCell
        else { fatalError("not casting") }
        let target = Bank.banks[indexPath.row]
        cell.cellImage.image = target.image.toImage()
        cell.cellTitle.text = target.title
        cell.cellContents.text = target.content
        return cell
    }
}

extension String {
    func toImage() -> UIImage? {
        if let data = Data(base64Encoded: self, options: .ignoreUnknownCharacters) {
            return UIImage(data: data)
        }
        return nil
    }
}
