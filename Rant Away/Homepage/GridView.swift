//
//  GridView.swift
//  Rant Away
//
//  Created by Don Bouncy on 25/11/2022.
//

import SwiftUI

struct GridView: View {
    @ObservedObject var rantsVM: RantsViewModel
    
    //    let col = [GridItem(.adaptive(minimum: 400))]
    var body: some View {
        GeometryReader { proxy in
            ScrollView {
                ForEach(rantsVM.rants) { rant in
                    NavigationLink {
                        RantView(rant: rant)
                    } label: {
                        VStack(alignment: .leading, spacing: 10){
                            Text(rant.rant)
                                .font(.body)
                                .frame(maxHeight: 100)
                                .frame(width: proxy.size.width * 0.85, alignment: .leading)
                                .multilineTextAlignment(.leading)
                            
                            Text(rant.title)
                                .font(.title3.bold())
                                .multilineTextAlignment(.leading)
                            
                            Text(rant.formattedDate)
                                .font(.subheadline)
                        }
                        .frame(width: proxy.size.width * 0.85)
                        .foregroundColor(.black)
                        .padding()
//                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.thinMaterial)
                                .shadow(color: .black, radius: 2, x: 0, y: 0)
                        }
                        .padding(4)
                        .frame(width: proxy.size.width)
                        
                    }
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(rantsVM: RantsViewModel())
    }
}
