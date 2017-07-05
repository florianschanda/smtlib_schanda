(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8615607645348990484279738666373305022716522216796875p376 {+ 3880124738116411 376 (2.8652e+113)}
; Y = -1.04821873265249809747956533101387321949005126953125p84 {- 217157866406068 84 (-2.02755e+025)}
; 1.8615607645348990484279738666373305022716522216796875p376 = -1.04821873265249809747956533101387321949005126953125p84 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101110111 #b1101110010001111001111110000101100110001101100111011)))
(assert (= y (fp #b1 #b10001010011 #b0000110001011000000100000001011111001100000010110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
