//
//  CardSelectionView.swift
//  PeriodicTarot
//
//  Created by Tomas Hooper on 07/05/2024.
//

import SwiftUI

struct CardSelectionView: View {
    @Binding var isShowResult: Bool
    @State var count: Int?
    var body: some View {
        ZStack {
            BackgroundView()
            content
            ZStack {
                if isShowResult {
                    ResultView(isShowResult: $isShowResult, count: count)
                        .transition(.move(edge: .bottom))
                }
            }
        }
    }
    
    private var content: some View {
        VStack(spacing: 30, content: {
            listItem("DRAW ONE CARD", 1)
            listItem("DRAW THREE CARDS", 3)
            listItem("DRAW SEVEN CARDS", 7)
            listItem("VIEW ALL CARDS", nil)
        })
        .frame(width: 280)
    }
    
    private func listItem(_ title: String, _ count: Int?) -> some View {
        Button(action: {
            self.count = count
            withAnimation(.easeInOut(duration: 0.3)) {
                isShowResult = true
            }
        }, label: {
            ZStack {
                Color("Yellow").opacity(0.6)
                    .background(.ultraThinMaterial)
                    .clipShape(Capsule())
                
                Capsule()
                    .stroke(lineWidth: 2.5)
                    .foregroundColor(Color("Purple"))
                
                Text(title)
                    .font(.custom("Segoe Print", fixedSize: 18))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Black"))
            }
            .frame(height: 55)
        })
    }
}

#Preview {
    CardSelectionView(isShowResult: .constant(false))
}
