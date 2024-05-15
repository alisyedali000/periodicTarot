//
//  MainView.swift
//  PeriodicTarot
//
//  Created by Tomas Hooper on 07/05/2024.
//

import SwiftUI

struct MainView: View {
    @State var selectedTab = TabItems.home
    @State var isShowResult = false
    var body: some View {
        VStack(spacing: 0, content: {
            switch selectedTab {
            case .home:
                HomeView()
            case .about:
                AboutView()
            case .cards:
                CardSelectionView(isShowResult: $isShowResult)
            }
            tabView
            
        })
        .edgesIgnoringSafeArea(.bottom)

    }
    
    private var tabView: some View {
        HStack {
            ForEach(TabItems.allCases, id: \.hashValue) { item in
                tabItem(item)
            }
        }
        .padding(.vertical, 20)
        .background(
            Rectangle()
                .foregroundColor(Color("Blue"))
                .shadow(color: Color("Black").opacity(0.15), radius: 4, x: 0, y: -2)
        )

    }
    
    private func tabItem(_ item: TabItems) -> some View {
        Image(item.rawValue.capitalized)
            .opacity(selectedTab == item ? 1 : 0.5)
            .shadow(color: Color("Black").opacity(selectedTab == item ? 0.45 : 0), radius: 6, x: 0, y: 6)
            .onTapGesture {
                if selectedTab == item && item == .cards {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        isShowResult = false
                    }
                }
                selectedTab = item
            }
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    MainView()
}
