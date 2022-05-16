//
//  TableViewController.swift
//  MVC2MVVM
//
//  Created by Евгений Тимофеев on 15.05.2022.
//

import UIKit

class TableViewController: UITableViewController {
    private var viewModel: TableViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }
    
    // MARK: - Table view data source
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0 // нужен ли тут опционал?
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell, let viewModel = viewModel else {return UITableViewCell()}
        /*
         создаем ячейку
         кастим до созданной модели
         проверяем ячейку и вью модель на нил
        */
        
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        tableViewCell.viewModel = cellViewModel
        /*
         создаем модель ячейки с индексом с помощью метода из протокола TableViewViewModelType
         присваиваем модель модель ячейки самой ячейке, созданной в 28 строке
         */
        
        return tableViewCell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else {return}
        viewModel.selectRow(atIndexPath: indexPath)
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier =  segue.identifier, let viewModel = viewModel else {return}
        if identifier == "detailSegue"{
            if let detailViewController = segue.destination as? DetailViewController {
                detailViewController.viewModel = viewModel.viewModelForSelectedRow()
            }
        }
    }
    
}
