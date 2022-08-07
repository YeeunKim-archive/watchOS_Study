//
//  FolderView.swift
//  todo WatchKit Extension
//
//  Created by yeekim on 2022/08/03.
//

import SwiftUI

struct FolderView: View {
    
    @FetchRequest(
        entity: Folder.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Folder.dateAdded, ascending: false)],
        animation: .easeInOut)
    
    var results: FetchedResults<Folder>
    
    var body: some View {
        List {
            ForEach(results) { item in
                HStack {
                    NavigationLink(
                        destination: TodoListView(folderName: item.title ?? "", accentColor: item.colorString ?? "blue"),
                        label: {
                            Text(item.title ?? "")
                        })
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .contentShape(Rectangle())
                    .background(
                        LinearGradient(gradient:
                                        Gradient(colors:
                                                    [Color(item.colorString ?? "blue"),
                                                    Color(item.colorString ?? "blue").opacity(0.8),
                                                    Color(item.colorString ?? "blue")]),
                                        startPoint: .top, endPoint: .bottom))
                    .cornerRadius(5)
                }
            }
            NavigationLink(
                destination: AddNewFolder(),
                label: {
                    HStack {
                        Spacer()
                        Image(systemName: "plus")
                        Text("New Folder")
                        Spacer()
                    }
                })
        }.listStyle(CarouselListStyle())
            .navigationTitle("Folders")
    }
}

struct FolderView_Previews: PreviewProvider {
    static var previews: some View {
        FolderView()
    }
}
