evaluation
run: aSelector with: anArray in: aReceiver

	^ aReceiver withArgs: anArray executeMethod: method
