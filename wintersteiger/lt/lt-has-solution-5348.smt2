(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.633134543876523903094266643165610730648040771484375p-752 {+ 2851384495877702 -752 (6.8939e-227)}
; Y = 1.4544767557305300353931443169130943715572357177734375p-1006 {+ 2046781347756567 -1006 (2.12095e-303)}
; 1.633134543876523903094266643165610730648040771484375p-752 < 1.4544767557305300353931443169130943715572357177734375p-1006 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100001111 #b1010001000010101000110101111111111101010111001000110)))
(assert (= y (fp #b0 #b00000010001 #b0111010001011000100101101011001010100111101000010111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
