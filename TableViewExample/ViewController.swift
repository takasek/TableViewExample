//
//  ViewController.swift
//  TableViewExample
//
//  Created by Yoshitaka Seki on 2016/08/29.
//  Copyright © 2016年 Yoshitaka Seki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.registerClass(sameIdentifierAs: SubclassCell.self)
        tableView.registerNib(UINib(nibName: "ColorCell", bundle: nil), forCellReuseIdentifier: "BackgroundColorCell")
        tableView.registerNib(sameNibNameAndIdentifierAs: SwitchCell.self)
        tableView.registerNib(sameNibNameAndIdentifierAs: SliderCell.self)
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.datasource.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let dequeuer = TableCellDequeuer(tableView: tableView, indexPath: indexPath)

        switch viewModel.datasource[indexPath.row] {
        case .Subclass:
            return dequeuer.dequeue(sameIdentifierAs: SubclassCell.self) {
                $0.textLabel?.text = "サブクラス"
            }

        case .Switch(let on):
            return dequeuer.dequeue(sameIdentifierAs: SwitchCell.self) {
                $0.uiSwitch.on = on
            }

        case .Slider(let value):
            return dequeuer.dequeue(sameIdentifierAs: SliderCell.self) {
                $0.slider.value = value
            }

        case .BGColor(let color):
            return dequeuer.dequeue(ColorCell.self, with: "BackgroundColorCell") {
                $0.backgroundColor = color
            }

        case .FGColor(let color):
            return dequeuer.dequeue(ColorCell.self, with: "ForegroundColorCell") {
                $0.textLabel?.textColor = color
            }
        }
    }
}
