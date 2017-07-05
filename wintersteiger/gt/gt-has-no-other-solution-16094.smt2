(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8797274817829918713840697819250635802745819091796875p734 {- 3961940359145467 734 (-1.69868e+221)}
; Y = 1.5251288897928565457817740025348030030727386474609375p-160 {+ 2364970272392591 -160 (1.04354e-048)}
; -1.8797274817829918713840697819250635802745819091796875p734 > 1.5251288897928565457817740025348030030727386474609375p-160 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011011101 #b1110000100110101110100011111101110100110011111111011)))
(assert (= y (fp #b0 #b01101011111 #b1000011001101110110110001100111111011000010110001111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
