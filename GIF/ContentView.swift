//
//  ContentView.swift
//  GIF
//
//  Created by Hajar Nashi on 21/05/1444 AH.
//
/*
import SwiftUI

struct ContentView: View {
    var body: some View {

            Text("Hello, world!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/

import SwiftUI

struct ContentView: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance ()
    
    var body: some View {
        TabView(selection: $pageIndex) {
            ForEach(pages) { page in
                VStack {
                    if page == pages.first {
                        Loading_page()
                    }
                    if page == pages.last {
                        Loading_page_1()
                        
                    }
                    Spacer()
                    page1(page: page)
                    
               //     Spacer()
                    
                    Spacer()
                    
                  }
                .tag(page.tag)
                }
 
            }
        .animation(.easeInOut, value: pageIndex)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .onAppear {
            dotAppearance.currentPageIndicatorTintColor = .black
            dotAppearance.pageIndicatorTintColor = .gray
        }
        }
    
    func incrementPage() {
        pageIndex += 1
    }
    
    func goToZero() {
        pageIndex = 0
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*       ForEach(pages) { page in
           VStack {
               Spacer()
               page1(page: page)
               Spacer()
               if page == pages.last {
                   Button("Sign up", action: goToZero)
                       .buttonStyle(.bordered)
               }else {
                   Button("next", action: incrementPage)
               }
               Spacer()
               
             }
           .tag(page.tag)
           } */
