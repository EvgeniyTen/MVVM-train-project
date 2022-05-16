//
//  ViewModel.swift
//  MVC2MVVM
//
//  Created by Евгений Тимофеев on 15.05.2022.
//

import Foundation

class ViewModel: TableViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    /*
Здесь описаны данные для отображения
В дальнейшем нужно дернуть данные из сети
     */
    
   var profiles = [Profile(name: "Первый", surname: "пользователь", line: 1),
                Profile(name: "Второй", surname: "пользователь", line: 2),
                Profile(name: "Третий", surname: "пользователь", line: 3)]
    
    
    
    func numberOfRows() -> Int { // Возвращаем количество элементов массива
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? { // Возвращаем ячейку по индексу
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else {return nil}
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
