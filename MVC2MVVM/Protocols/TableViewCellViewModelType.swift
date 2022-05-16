//
//  TableViewCellViewModelType.swift
//  MVC2MVVM
//
//  Created by Евгений Тимофеев on 15.05.2022.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject { // Задаем тип данных для элементов интерфейса
    var fullName: String {get}
    var age: String {get}
}
