//
//  GridView.swift
//  Rant Away
//
//  Created by Don Bouncy on 25/11/2022.
//

import SwiftUI

struct GridView: View {
    let col = [GridItem(.adaptive(minimum: 200))]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: col) {
                ForEach(0..<10) { i in
                    NavigationLink {
                        RantView()
                    } label: {
                        VStack(alignment: .leading, spacing: 10){
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque placerat, sem et posuere vestibulum, dui neque hendrerit enim, eget vestibulum felis orci sit amet enim. Sed vestibulum leo ut fermentum convallis. Sed rhoncus ligula ligula, eu mollis tortor.")
                                .font(.body)
                                .frame(height: 100)
                                .multilineTextAlignment(.leading)
                            
                            Text("Lorem Ipsum")
                                .font(.title2.bold())
                            
                            Text(Date().formatted())
                                .font(.subheadline)
                        }
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.thinMaterial)
                                .shadow(color: .black, radius: 2, x: 0, y: 0)
                        }
                        .padding(4)
                    }
                }
                
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
