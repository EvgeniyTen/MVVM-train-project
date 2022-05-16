//
//  TableViewModelType.swift
//  MVC2MVVM
//
//  Created by Евгений Тимофеев on 15.05.2022.
//

import Foundation

protocol TableViewModelType {
    func numberOfRows() -> Int // Предоставление данных о количестве строк в таблице
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? // Предоставление данных в ячейке
    
    func viewModelForSelectedRow()-> DetailViewModelType?
    func selectRow(atIndexPath indexPath: IndexPath)
}
