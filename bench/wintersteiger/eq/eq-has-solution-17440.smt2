(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3875354331848830380380377391702495515346527099609375p-104 {- 1745304432484303 -104 (-6.84108e-032)}
; Y = 1.736900899684625354524314388982020318508148193359375p-284 {+ 3318706617228662 -284 (5.588e-086)}
; -1.3875354331848830380380377391702495515346527099609375p-104 = 1.736900899684625354524314388982020318508148193359375p-284 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110010111 #b0110001100110101100001011010101110010001111111001111)))
(assert (= y (fp #b0 #b01011100011 #b1011110010100101100010011001000010001001110101110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
