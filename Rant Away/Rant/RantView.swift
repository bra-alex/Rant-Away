//
//  RantView.swift
//  Rant Away
//
//  Created by Don Bouncy on 25/11/2022.
//

import SwiftUI

struct RantView: View {
    @State var rant: RantsModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Text(rant.rant)
                .padding()
                .multilineTextAlignment(.leading)
                
                HStack{
                    Spacer()
                    
                    Text(rant.formattedDate)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.trailing)
            }
            }
        }
        .navigationTitle(rant.title)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct RantView_Previews: PreviewProvider {
    static var previews: some View {
        RantView(rant: RantsViewModel().rants[0])
    }
}
