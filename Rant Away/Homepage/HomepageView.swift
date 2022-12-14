//
//  HomepageView.swift
//  Rant Away
//
//  Created by Don Bouncy on 25/11/2022.
//

import SwiftUI

struct HomepageView: View {
    @ObservedObject var rantsVM: RantsViewModel
    
    @State private var grid = false
    @State private var addRant = false
    var body: some View {
        Group{
            if grid {
                GridView(rantsVM: rantsVM)
            } else {
                ListView(rantsVM: rantsVM)
            }
        }
        .overlay(alignment: .bottomTrailing) {
            Button {
                addRant = true
            } label: {
                Image(systemName: "pencil")
                    .renderingMode(.original)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
            }
            .padding()
            .background(.blue)
            .clipShape(Circle())
            .padding()
        }
        .fullScreenCover(isPresented: $addRant, content: {
            NewRantView(rantsVM: rantsVM)
        })
        .navigationTitle("Rants")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button {
                withAnimation(.default){
                    grid.toggle()
                }
            } label: {
                Image(systemName: grid ? "list.bullet" : "square.grid.2x2")
            }
        }
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
