//
//  ContentView.swift
//  Touchdown
//
//  Created by Macbook Pro on 4/4/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPS
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 10) {
                        FeaturedTabView()
                            .padding(.vertical, 20)
                            .frame(width: .infinity, height: 300, alignment: .center)
                        
                        
                        CategoryGridView()
                        
                        Spacer()
                        
                        FooterView()
                            .padding(.horizontal)
                    }.frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .topLeading
                      )
                })
            } //: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }.ignoresSafeArea(.all, edges: .top)
    }
}


// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
