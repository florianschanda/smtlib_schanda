(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9141582090038167240919619871419854462146759033203125p-553 {+ 4117002569427269 -553 (6.49218e-167)}
; Y = -1.953974562197227982096592313610017299652099609375p641 {- 4296319482832368 641 (-1.78298e+193)}
; 1.9141582090038167240919619871419854462146759033203125p-553 < -1.953974562197227982096592313610017299652099609375p641 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111010110 #b1110101000000110010001011011101100001010100101000101)))
(assert (= y (fp #b1 #b11010000000 #b1111010000110111101011010100100111011010010111110000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
