//
//  ControlButtonsView.swift
//  Pinch
//
//  Created by Tony Gorez on 24/05/2023.
//

import SwiftUI

struct ControlButtonsView: View {
    let decreaseAction: () -> Void
    let resetAction: () -> Void
    let increaseAction: () -> Void
    
    var body: some View {
        Group {
            HStack {
                Button(action: decreaseAction) {
                    ControlImageView(icon: "minus.magnifyingglass")
                }
                
                Button(action: resetAction) {
                    ControlImageView(icon: "arrow.up.left.and.down.right.magnifyingglass")
                }
                
                Button(action: increaseAction) {
                    ControlImageView(icon: "plus.magnifyingglass")
                }
            }
            .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
            .background(.ultraThinMaterial)
            .cornerRadius(12)
        }
        .padding(.bottom, 30)
    }
}


struct ControlButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlButtonsView(decreaseAction: {}, resetAction: {}, increaseAction: {})
    }
}
