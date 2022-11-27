//
//  ListView.swift
//  Rant Away
//
//  Created by Don Bouncy on 25/11/2022.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var rantsVM: RantsViewModel
    
    var body: some View {
        List {
            ForEach(rantsVM.rants) { rant in
                NavigationLink {
                    RantView(rant: rant)
                } label: {
                    VStack(alignment: .leading, spacing: 10){
                        HStack{
                            Text(rant.title)
                                .font(.title2.bold())
                            
                            Spacer()
                            
//                            Text(Date().formatted())
//                                .font(.subheadline)
//                                .padding(.trailing)
                        }
                        
                        Text(rant.rant)
                            .font(.body)
                            .frame(maxHeight: 100)
                    }
                }
            }
        }
        .listStyle(.plain)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(rantsVM: RantsViewModel())
    }
}
