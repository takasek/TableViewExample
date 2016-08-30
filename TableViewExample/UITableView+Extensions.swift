//
//  UITableView+Extensions.swift
//  TableViewExample
//
//  Created by Yoshitaka Seki on 2016/08/29.
//  Copyright © 2016年 Yoshitaka Seki. All rights reserved.
//

import UIKit

struct TableCellDequeuer {
    weak var tableView: UITableView!
    let indexPath: NSIndexPath
    func dequeue<Cell: UITableViewCell>(cellClass: Cell.Type, with identifier: String, configure: (Cell) -> Void = { _ in }) -> Cell {
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as! Cell
        configure(cell)
        return cell
    }
    func dequeue<Cell: UITableViewCell>(sameIdentifierAs cellClass: Cell.Type, configure: (Cell) -> Void = { _ in }) -> Cell {
        return dequeue(cellClass, with: "\(cellClass)", configure: configure)
    }
}

extension UITableView {
    func registerNib<Cell: UITableViewCell>(sameNibNameAndIdentifierAs cellClass: Cell.Type) {
        let name = "\(cellClass)"
        let identifier = "\(cellClass)"
        registerNib(UINib(nibName: name, bundle: nil), forCellReuseIdentifier: identifier)
    }
    func registerClass<Cell: UITableViewCell>(sameIdentifierAs cellClass: Cell.Type) {
        let identifier = "\(cellClass)"
        registerClass(cellClass, forCellReuseIdentifier: identifier)
    }
}