(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.57138317812557115615845759748481214046478271484375p-145 {- 2573281068092092 -145 (-3.52316e-044)}
; Y = -1.3308398635343212657033973300713114440441131591796875p829 {- 1489970286132475 829 (-4.76422e+249)}
; -1.57138317812557115615845759748481214046478271484375p-145 = -1.3308398635343212657033973300713114440441131591796875p829 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101110 #b1001001001000110001010101111111110001000101010111100)))
(assert (= y (fp #b1 #b11100111100 #b0101010010110001111010111101101000010111110011111011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
