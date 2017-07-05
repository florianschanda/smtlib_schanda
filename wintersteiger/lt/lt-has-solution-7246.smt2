(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.638386169676784742677000394905917346477508544921875p-420 {+ 2875035715874846 -420 (6.05087e-127)}
; Y = -1.6660856463774382785203442836063914000988006591796875p-372 {- 2999783068822267 -372 (-1.73196e-112)}
; 1.638386169676784742677000394905917346477508544921875p-420 < -1.6660856463774382785203442836063914000988006591796875p-372 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001011011 #b1010001101101101010001101010100011111011000000011110)))
(assert (= y (fp #b1 #b01010001011 #b1010101010000100100101101100001110000110101011111011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
