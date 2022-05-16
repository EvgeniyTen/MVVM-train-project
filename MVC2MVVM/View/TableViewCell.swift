//
//  TableViewCell.swift
//  MVC2MVVM
//
//  Created by Евгений Тимофеев on 15.05.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!

    weak var viewModel: TableViewCellViewModelType? { // присваиваем данные лейблам из вью модели
        willSet(viewModel) {
            guard let viewModel = viewModel else {return}
            fullNameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }
}
