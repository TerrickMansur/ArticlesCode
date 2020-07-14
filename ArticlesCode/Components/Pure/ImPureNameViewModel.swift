//
//  InPureNameViewModel.swift
//  Pure functions What about Pure viewModels
//
//  Created by Terrick Mansur on 07/07/2020.
//  Copyright © 2020 Terrick Mansur. All rights reserved.
//

import Foundation

protocol ImPureNameViewModelType {
    var name: String { get }
    var isLoading: Bool { get }
}

class ImPureNameViewModel: ImPureNameViewModelType {
    
    let didUpdate: () -> ()
    
    // MARK: NameViewModelType
    var name = ""
    var isLoading = false
    
    init(didUpdate: @escaping ()->()) {
        self.didUpdate = didUpdate
        requestName()
    }
    
    func requestName() {
        
        startLoadingAnimation()
        NameService.retrieveName { response in
            switch response {
            case .success(let name):
            self.name = name
            case .failed:
            self.name = "Failed"
            }
            self.stopLoadingAnimation()
        }
    }
    
    private func startLoadingAnimation() {
        name = ""
        isLoading = true
        didUpdate()
    }
    
    private func stopLoadingAnimation() {
        isLoading = false
        didUpdate()
    }
}
