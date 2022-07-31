//
//  DownloadingImagesViewModel.swift
//  DownloadAndSaveImages
//
//  Created by Дмитрий Спичаков on 31.07.2022.
//

import Foundation
import Combine

class DownloadingImagesViewModel: ObservableObject {
    
    @Published var dataArray: [PhotoModel] = []
    var cancellables = Set<AnyCancellable>()
    
    let dataService = PhotoModelDataService.shared
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        // $ cause its publisher
        dataService.$photoModels
            .sink { [weak self] (returnedPhotoModels) in
                self?.dataArray = returnedPhotoModels
            }
            .store(in: &cancellables)
    }
}
