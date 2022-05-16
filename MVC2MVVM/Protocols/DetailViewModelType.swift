//
//  DetailViewModelType.swift
//  MVC2MVVM
//
//  Created by Евгений Тимофеев on 15.05.2022.
//

import Foundation

protocol DetailViewModelType {
    var description: String {get}
    var line: Box<String?> {get}
}
