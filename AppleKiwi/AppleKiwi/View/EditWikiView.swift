//
//  EditWikiView.swift
//  AppleKiwi
//
//  Created by 임성균 on 2022/04/06.
//

import SwiftUI

struct EditWikiView: View {
    @State private var markdown: String = """
    ## 제목
    ### 부제목
    *인스타그램* 아이디 @ddd.codd
    - 아무런
    """
    
    var body: some View {
        VStack {
            ScrollView {
                TextEditor(text: $markdown)
                    .padding()
                    .frame(maxHeight: .infinity)
            }
        }
    }
}

struct EditWikiView_Previews: PreviewProvider {
    static var previews: some View {
        EditWikiView()
    }
}
