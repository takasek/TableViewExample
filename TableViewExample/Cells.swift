//
//  Cells.swift
//  TableViewExample
//
//  Created by Yoshitaka Seki on 2016/08/29.
//  Copyright © 2016年 Yoshitaka Seki. All rights reserved.
//

import UIKit

final class ColorCell: UITableViewCell {
}

final class SwitchCell: UITableViewCell {
    @IBOutlet weak var uiSwitch: UISwitch!
}


final class SliderCell: UITableViewCell {
    @IBOutlet weak var slider: UISlider!
}

final class SubclassCell: UITableViewCell {}
