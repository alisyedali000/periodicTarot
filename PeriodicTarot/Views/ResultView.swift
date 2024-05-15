//
//  ResultView.swift
//  PeriodicTarot
//
//  Created by Tomas Hooper on 07/05/2024.
//

import SwiftUI

struct ResultView: View {
    @State var selectedIndex = Int.zero
    @State var cards = [Int]()
    @Binding var isShowResult: Bool
    var count: Int?
    var body: some View {
        ZStack(alignment: .topLeading) {
            ZStack {
                bg
                results
            }
            .ignoresSafeArea()
            
        }
        .frame(maxHeight: .infinity)
        .onAppear {
            cards = items
        }

        
    }
    
    private var bg: some View {
        ZStack {
            Color("Blue")
            GeometryReader { proxy in
                Image(String(format: "%.2d", selectedIndex < cards.count ? cards[selectedIndex] : 0))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .clipped()
                    .blur(radius: 20)
                    .animation(.easeOut, value: selectedIndex)
            }
        }
    }
    
    private var results: some View {
        TabView(selection: $selectedIndex) {
            ForEach(0..<cards.count, id: \.self) { index in
                result(cards[index])
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
    
    private var items: [Int] {
        let cards = (1...67).filter({ $0 != 27 }).map({ $0 })
        if let count {
            return Array(cards.shuffled()[0..<count])
        }
        print(cards)
        return Array(cards)
    }
    
    private func result(_ index: Int) -> some View {
        ZStack {
            GeometryReader { proxy in
                Image(String(format: "%.2d", index))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .shadow(color: Color("Black").opacity(0.6), radius: 20, x: 0, y: 0)
            }
        }
        .padding(.horizontal, 20)
        .ignoresSafeArea()
    }
}

#Preview {
    ResultView(isShowResult: .constant(true), count: nil)
}
