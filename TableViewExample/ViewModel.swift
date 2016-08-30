//
//  ViewModel.swift
//  TableViewExample
//
//  Created by Yoshitaka Seki on 2016/08/30.
//  Copyright © 2016年 Yoshitaka Seki. All rights reserved.
//

import UIKit

struct ViewModel {
    enum CellViewModel {
        case Subclass
        case BGColor(UIColor)
        case FGColor(UIColor)
        case Switch(Bool)
        case Slider(Float)
    }
    let datasource: [CellViewModel] = [
        .BGColor(.redColor()),
        .BGColor(.yellowColor()),
        .FGColor(.greenColor()),
        .FGColor(.blueColor()),
        .Subclass,
        .Switch(true),
        .Switch(false),
        .Slider(0.0),
        .Slider(0.2),
        .Slider(0.4),
        .Slider(0.6),
        .Slider(0.8),
        .Slider(1.0),
        ]
}