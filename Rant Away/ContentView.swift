//
//  ContentView.swift
//  Rant Away
//
//  Created by Don Bouncy on 25/11/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var rantsVM = RantsViewModel()
    var body: some View {
        NavigationStack {
            HomepageView(rantsVM: rantsVM)
                .onAppear(perform: rantsVM.fetchData)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
