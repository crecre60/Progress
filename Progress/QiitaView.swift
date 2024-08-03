//
//  StartView.swift
//  Progress
//
//  Created by Young Ju on 8/3/24.
//

import SwiftUI

struct QiitaView: View {
	@StateObject var vm = QiitaViewModel()
	
	var body: some View {
		List(vm.postData) { qiita in
//			HStack {
//				Text("\(post.userId)")
//					.padding()
//					.overlay(Circle().stroke(.blue))
//				
//				VStack(alignment: .leading) {
//					Text(post.title)
//						.bold()
//						.lineLimit(1)
//					
					Text(qiita.title)
						.font(.caption)
						.foregroundColor(.secondary)
//						.lineLimit(2)
//				}
//			}
		}
		.onAppear {
			if vm.postData.isEmpty {
				Task {
					await vm.fetchData()
				}
			}
		}
	}
}
