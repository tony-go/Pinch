//
//  InfoPanelUI.swift
//  Pinch
//
//  Created by Tony Gorez on 24/05/2023.
//

import SwiftUI

struct InfoPanelUI: View {
    var scale: CGFloat
    var offset: CGSize
    
    @State private var isInfoPanelVisible: Bool = false
    
    var body: some View {
        HStack {
            // MARK - HITSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 1) {
                    withAnimation(.easeOut) {
                        isInfoPanelVisible.toggle()
                    }
                }
            
            Spacer()
           
            HStack(spacing: 2) {
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                
                Spacer()
               
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")

                Spacer()

                Image(systemName: "arrow.left.and.right")
                Text("\(offset.height)")
            }
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(isInfoPanelVisible ? 1 : 0)
        }
    }
}

struct InfoPanelUI_Previews: PreviewProvider {
    static var previews: some View {
        InfoPanelUI(scale: 1, offset: .zero)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
