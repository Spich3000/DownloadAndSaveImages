//
//  DownloadingImagesBootcamp.swift
//  DownloadAndSaveImages
//
//  Created by Дмитрий Спичаков on 31.07.2022.
//

import SwiftUI

/*
 Here we know:
 Codable
 Background threads
 weak self
 Combine
 Publishers and Subscribers
 FileManager
 NSCache
*/

struct DownloadingImagesBootcamp: View {
    
    @StateObject var viewModel = DownloadingImagesViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray) { model in
                    DownloadingImagesRow(model: model)
                }
            }
            .navigationTitle("Downloading Images")
        }
    }
}

struct DownloadingImagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DownloadingImagesBootcamp()
    }
}
