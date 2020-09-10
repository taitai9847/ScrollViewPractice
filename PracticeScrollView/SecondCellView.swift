//
//  SecondCellView.swift
//  PracticeScrollView
//
//  Created by 石川太洋 on 2020/09/10.
//  Copyright © 2020 石川太洋. All rights reserved.
//

import SwiftUI

struct SecondCellView: View {
	
	@State var num: Int = 0
	
	var body: some View {
		VStack {
			Text("\(num)")
				.frame(width: 100, height: 100)
		}
	}
}

struct SecondCellView_Previews: PreviewProvider {
	static var previews: some View {
		SecondCellView()
			.previewLayout(.fixed(width: 100, height: 100))
	}
}
