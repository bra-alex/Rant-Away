//
//  ListView.swift
//  Rant Away
//
//  Created by Don Bouncy on 25/11/2022.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ForEach(0..<10) { i in
                NavigationLink {
                    RantView()
                } label: {
                    VStack(alignment: .leading, spacing: 10){
                        HStack{
                            Text("Lorem Ipsum")
                                .font(.title2.bold())
                            
                            Spacer()
                            
                            Text(Date().formatted())
                                .font(.subheadline)
                                .padding(.trailing)
                        }
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque placerat, sem et posuere vestibulum, dui neque hendrerit enim, eget vestibulum felis orci sit amet enim. Sed vestibulum leo ut fermentum convallis. Sed rhoncus ligula ligula, eu mollis tortor.")
                            .font(.body)
                            .frame(height: 100)
                    }
                }
            }
        }
        .listStyle(.plain)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
