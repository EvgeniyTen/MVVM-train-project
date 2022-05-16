//
//  DetailViewModel.swift
//  MVC2MVVM
//
//  Created by Евгений Тимофеев on 15.05.2022.
//

import Foundation
class DetailViewModel: DetailViewModelType {
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.surname) является \(profile.line)-м по счету")
    }
    var line: Box<String?> = Box(nil)
    
    init(profile: Profile){
        self.profile = profile
    }
}
