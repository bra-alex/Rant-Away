//
//  RantView.swift
//  Rant Away
//
//  Created by Don Bouncy on 25/11/2022.
//

import SwiftUI

struct RantView: View {
    var body: some View {
        ScrollView {
            Text(
"""
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque placerat, sem et posuere vestibulum, dui neque hendrerit enim, eget vestibulum felis orci sit amet enim. Sed vestibulum leo ut fermentum convallis. Sed rhoncus ligula ligula, eu mollis tortor hendrerit id. Fusce vel tortor varius, consequat urna in, tempor sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In malesuada pellentesque interdum. Donec vitae gravida mi.

Cras et aliquam nulla, sit amet sodales felis. Aliquam lacinia in justo interdum interdum. Mauris quis purus mauris. Ut blandit dui nec auctor rhoncus. Pellentesque venenatis quis orci ac vestibulum. Donec odio erat, ultrices nec blandit a, vestibulum hendrerit enim. Sed nec malesuada lectus, quis pulvinar tortor. Aenean enim ipsum, laoreet vitae blandit et, consequat eget elit. Phasellus eu eleifend orci. Duis at nunc nisl. Nullam suscipit rutrum quam, vel facilisis odio viverra non. Curabitur vel tortor eget tortor suscipit scelerisque eget a sem. Curabitur tincidunt, lectus nec tempus porta, sapien tellus consectetur arcu, sit amet varius velit diam a risus.

Nunc nec mi nibh. Proin ac auctor arcu. Fusce condimentum cursus facilisis. Curabitur non est lacinia ligula posuere faucibus eu in est. Aenean sollicitudin sollicitudin ligula, quis malesuada nulla. Nunc magna erat, eleifend sit amet cursus non, bibendum ac elit. Nulla at rutrum justo. Duis nec placerat nibh.

Cras vitae est tincidunt, fringilla orci at, lacinia augue. Etiam gravida ut ex in finibus. Curabitur vitae tristique arcu. In hac habitasse platea dictumst. Pellentesque id risus urna. Fusce sollicitudin sodales enim, ut accumsan erat finibus a. Nunc at nibh vestibulum, faucibus mi ac, venenatis mi. Pellentesque sem elit, posuere at mollis sed, tempor in elit. Praesent in risus ut elit eleifend dictum non sit amet eros. Morbi vel bibendum est. Vivamus tortor erat, volutpat id laoreet a, pellentesque eu odio.

Nullam facilisis quam sed augue consequat, eu dignissim nibh tincidunt. Nam at rhoncus augue. Aliquam id elit maximus, feugiat diam ac, rhoncus augue. Praesent vehicula, ante in malesuada maximus, eros nunc interdum dui, vitae tristique erat neque vel nibh. Aenean vitae erat eu metus sagittis viverra sed ac magna. Mauris quis luctus leo. Nunc faucibus nulla vel mauris ultrices scelerisque. Suspendisse vestibulum elit vel ipsum gravida gravida. Nulla facilisi. Maecenas rhoncus ornare feugiat. Morbi rhoncus eu mauris luctus mattis. Nulla malesuada, metus ac vulputate suscipit, orci orci tincidunt nisi, ac rhoncus erat tortor at libero. Nulla pellentesque, magna eu elementum congue, ipsum felis pellentesque libero, eget vulputate lorem tortor quis tortor. Nullam ac volutpat libero, quis suscipit quam.
"""
            )
            .padding()
            .multilineTextAlignment(.leading)
            
            HStack{
                Spacer()
                
                Text(Date().formatted())
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.trailing)
            }
        }
        .navigationTitle("Rant Title")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct RantView_Previews: PreviewProvider {
    static var previews: some View {
        RantView()
    }
}
