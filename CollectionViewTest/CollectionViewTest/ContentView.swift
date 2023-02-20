//
//  ContentView.swift
//  CollectionViewTest
//
//  Created by Vasim Khan on 2/19/23.
//

import SwiftUI

struct ContentView: View {
    let columns = [
        GridItem(.flexible(minimum: 150)),
        GridItem(.flexible(minimum: 150))
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured")
                .font(.title)
                .fontWeight(.bold)
                .padding(.leading, 20)
                .padding(.top, 10)
            ScrollView {
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(items) { item in
                        ItemView(item: item)
                    }
                    .padding(.horizontal, 5)
                }
                .padding(.horizontal, 16)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ItemView: View {
    var item: Item
    @State private var isZoomed = false
    
    var body: some View {
        VStack {
            Image(item.image)
                .resizable()
                .frame(height: 150)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .scaleEffect(isZoomed ? 1.5 : 1)
                .animation(.easeInOut(duration: 0.5))
                .onTapGesture {
                    isZoomed.toggle()
                }
            
            Text(item.title)
                .font(.headline)
                .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
