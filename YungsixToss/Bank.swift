//
//  Bank.swift
//  YungsixToss
//
//  Created by 최윤석 on 2022/07/04.
//

import Foundation
import UIKit

struct Bank {
    var image: String
    var title: String
    var content: String
    init(image: String, title: String, content: String) {
        self.image = image
        self.title = title
        self.content = content
    }
    static var banks = [
        Bank(image: "bell.fill", title: "KB나라사랑우대통장", content: "3,523원"),
        Bank(image: "bell.fill", title: "KB국민", content: "19,386원"),
        Bank(image: "bell.fill", title: "입출금통장", content: "9,067원"),
        Bank(image: "bell.fill", title: "저축 - 주택청약종합저축", content: "640,000")
    ]
}
