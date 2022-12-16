//
//  Loading page 1.swift
//  GIF
//
//  Created by Hajar Nashi on 21/05/1444 AH.
//

import SwiftUI

struct Loading_page_1: View {
    @State private var isActive = false
    @State private var size = 0.7
    @State private var opacity = 0.3
    @State private var pageIndex = 0
    var body: some View {
       
                
                ZStack{

                    VStack{
                        
                        GIFView(type: .name("proo"))
                            .frame(width: 566, height: 566)
            
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
    func goToZero() {
        pageIndex = 0
    }
    }
        
    

struct Loading_page_1_Previews: PreviewProvider {
    static var previews: some View {
        Loading_page_1()
    }
}

