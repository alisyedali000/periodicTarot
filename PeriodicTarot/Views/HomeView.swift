//
//  HomeView.swift
//  PeriodicTarot
//
//  Created by Tomas Hooper on 07/05/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            BackgroundView()
            VStack(spacing: -20, content: {
                Text("The Periodic Tarot")
                Text("of the Elements")
                    
            })
            .font(.custom("Segoe Print", fixedSize: 35))
            .fontWeight(.bold)
            .foregroundColor(Color("White"))
            .shadow(color: Color("Black"), radius: 1, x: 0, y: 0)
            .shadow(color: Color("Black"), radius: 1, x: 0, y: 0)
            .shadow(color: Color("Black"), radius: 1, x: 0, y: 0)
            .shadow(color: Color("Black"), radius: 1, x: 0, y: 0)
            .shadow(color: Color("Black"), radius: 1, x: 0, y: 0)
            .shadow(color: Color("Black"), radius: 1, x: 0, y: 0)
            .shadow(color: Color("Black").opacity(0.8), radius: 0.5, x: 3, y: 2)
            .padding(.bottom, 50)
            
            

        }
    }
}

#Preview {
    HomeView()
}
