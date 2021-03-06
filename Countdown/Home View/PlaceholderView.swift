//
//  PlaceholderView.swift
//  Countdown
//
//  Created by Richard Robinson on 2020-07-24.
//

import SwiftUI

struct PlaceholderView: View {
    var body: some View {
        VStack {
            Image("empty")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer().height(40)
            
            Text("No Events").font(.body).bold()
            
            Spacer().height(5)
                        
            Text("Get started by adding an Event")
                .font(.subheadline)
                .opacity(0.8)
        }
        .padding(.horizontal, 50)
    }
}

struct PlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderView()
            .preferredColorScheme(.dark)
    }
}
