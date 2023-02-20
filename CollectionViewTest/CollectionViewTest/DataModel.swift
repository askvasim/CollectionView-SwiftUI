//
//  DataModel.swift
//  CollectionViewTest
//
//  Created by Vasim Khan on 2/19/23.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var image: String
    var title: String
}

let items = [
    Item(image: "image1", title: "Item 1"),
    Item(image: "image2", title: "Item 2"),
    Item(image: "image3", title: "Item 3"),
    Item(image: "image4", title: "Item 4"),
    Item(image: "image5", title: "Item 5"),
    Item(image: "image6", title: "Item 6"),
    Item(image: "image7", title: "Item 7"),
    Item(image: "image8", title: "Item 8"),
    Item(image: "image9", title: "Item 9")
]
