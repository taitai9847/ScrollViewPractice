//
//  ThirdCellView.swift
//  PracticeScrollView
//
//  Created by 石川太洋 on 2020/09/10.
//  Copyright © 2020 石川太洋. All rights reserved.
//

import SwiftUI

struct ThirdCellView: View {
    var body: some View {
        Image("twitter_icon")
			.resizable()
			.frame(width: 100, height: 100)
    }
}

struct ThirdCellView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdCellView()
			.previewLayout(.fixed(width: 100, height: 100))
    }
}
