(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7131127346528904897837719545350410044193267822265625p-173 {- 3211574246055913 -173 (-1.43086e-052)}
; Y = 1.578938675280270320655517934937961399555206298828125p384 {+ 2607308002262594 384 (6.22134e+115)}
; -1.7131127346528904897837719545350410044193267822265625p-173 = 1.578938675280270320655517934937961399555206298828125p384 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101010010 #b1011011010001110100011100110000110110001111111101001)))
(assert (= y (fp #b0 #b10101111111 #b1001010000110101010100110011010010110111111001000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
