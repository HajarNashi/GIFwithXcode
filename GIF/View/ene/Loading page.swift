//
//  Loading page.swift
//  GIF
//
//  Created by Hajar Nashi on 21/05/1444 AH.
//

import SwiftUI

struct Loading_page: View {
    @State private var isActive = false
    @State private var size = 0.7
    @State private var opacity = 0.3
    
    var body: some View {
        ZStack{
            HStack{
                
                GIFView(type: .name("pro"))
                
                    .frame(width: 550, height: 550)
            }
            //   .scaleEffect (size)
            .opacity (opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.2)) {
                    self.size = 1.0
                    self.opacity = 1.0
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
        }
        
    }
       


           
    

struct Loading_page_Previews: PreviewProvider {
    static var previews: some View {
        Loading_page()
    }
}
