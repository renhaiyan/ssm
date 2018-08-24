package com.self.model.bridge;

public class BridgeTest {

	public static void main(String[] args) {
		
		Bridge bridge = new MyBridge();
		
		/**
		 * 第一个对象
		 */
		Sourceable source1 = new SourceSub1();
		bridge.setSource(source1);
		bridge.method();
		
		Sourceable source2 = new SourceSub2();
		bridge.setSource(source2);
		bridge.method();
		
		
	}
}
