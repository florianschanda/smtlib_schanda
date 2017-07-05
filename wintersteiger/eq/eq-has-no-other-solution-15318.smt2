(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0775129168659900447124755373806692659854888916015625p892 {+ 349087143514073 892 (3.55778e+268)}
; Y = 1.5729302802879494560528428337420336902141571044921875p910 {+ 2580248596814083 910 (1.36146e+274)}
; 1.0775129168659900447124755373806692659854888916015625p892 = 1.5729302802879494560528428337420336902141571044921875p910 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101111011 #b0001001111010111111000101111001011110100111111011001)))
(assert (= y (fp #b0 #b11110001101 #b1001001010101011100011110001000010111001100100000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
