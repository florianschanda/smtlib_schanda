(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2105151186774156801817525774822570383548736572265625p-414 {- 948075810031465 -414 (-2.86123e-125)}
; Y = 1.0730541545371130585095897913561202585697174072265625p238 {+ 329006663151209 238 (4.73981e+071)}
; -1.2105151186774156801817525774822570383548736572265625p-414 < 1.0730541545371130585095897913561202585697174072265625p238 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001100001 #b0011010111100100010100011001111000001000011101101001)))
(assert (= y (fp #b0 #b10011101101 #b0001001010110011101011010101010010010010111001101001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
