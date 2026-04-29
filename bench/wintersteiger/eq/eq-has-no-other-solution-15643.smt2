(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4961334849228096199880155836581252515316009521484375p-640 {- 2234386577824391 -640 (-3.27924e-193)}
; Y = -1.536964694846920220783204058534465730190277099609375p-264 {- 2418273999623702 -264 (-5.18496e-080)}
; -1.4961334849228096199880155836581252515316009521484375p-640 = -1.536964694846920220783204058534465730190277099609375p-264 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101111111 #b0111111100000010100110101010010000110001101010000111)))
(assert (= y (fp #b1 #b01011110111 #b1000100101110110100001001010101101111001011000010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
