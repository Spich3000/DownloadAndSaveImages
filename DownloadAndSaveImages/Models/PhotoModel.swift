//
//  PhotoModel.swift
//  DownloadAndSaveImages
//
//  Created by Дмитрий Спичаков on 31.07.2022.
//

import Foundation

struct PhotoModel: Identifiable, Codable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}
