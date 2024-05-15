//
//  BackgroundView.swift
//  PeriodicTarot
//
//  Created by Tomas Hooper on 07/05/2024.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            GeometryReader { proxy in
                Image("BG")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .clipped()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
