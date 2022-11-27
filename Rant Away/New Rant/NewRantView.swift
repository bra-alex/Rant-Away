//
//  NewRantView.swift
//  Rant Away
//
//  Created by Don Bouncy on 25/11/2022.
//

import SwiftUI

struct NewRantView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var rantsVM: RantsViewModel
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {
                Spacer()
                
                HStack {
                    Text("Title: ")
                        .font(.headline)
                        .padding(.trailing)
                    
                    TextField("Title", text: $rantsVM.title)
                    
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading) {
                    Text("Rant: ")
                        .font(.headline)
                        .padding(.vertical)
                    
                    TextEditor(text: $rantsVM.rant)
                        .frame(height: 300)
                        .overlay(alignment: .topLeading) {
                            if rantsVM.rant.isEmpty {
                                Text("Rant")
                                    .foregroundColor(.gray)
                            }
                        }
                }
                .padding(.horizontal)
                
                Spacer()
                Spacer()
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(role: .destructive){
                        dismiss()
                    } label: {
                        Text("Cancel")
                    }
                    .buttonStyle(.borderedProminent)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        rantsVM.postData()
                        dismiss()
                    } label: {
                        Text("Send")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

struct NewRantView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NewRantView(rantsVM: RantsViewModel())
        }
    }
}
