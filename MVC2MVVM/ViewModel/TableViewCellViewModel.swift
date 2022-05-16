//
//  TableViewCellViewModel.swift
//  MVC2MVVM
//
//  Created by Евгений Тимофеев on 15.05.2022.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.surname
    }
    
    var age: String {
        return String(describing: profile.line)
    }
    
    init(profile: Profile){
        self.profile = profile
    }
    
}
