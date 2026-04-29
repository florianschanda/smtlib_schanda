(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3144602281188870751549302440253086388111114501953125p146 {- 1416202966179061 146 (-1.17254e+044)}
; Y = -1.6286413030332445028847132562077604234218597412109375p461 {- 2831148738090223 461 (-9.69736e+138)}
; -1.3144602281188870751549302440253086388111114501953125p146 = -1.6286413030332445028847132562077604234218597412109375p461 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010010001 #b0101000010000000011101110010101110101001110011110101)))
(assert (= y (fp #b1 #b10111001100 #b1010000011101110101000101110110101110001010011101111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
