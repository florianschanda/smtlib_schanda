(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1000997601311859330763809339259751141071319580078125p99 {- 450809242426685 99 (-6.97271e+029)}
; Y = 1.7984782971330008916055476220208220183849334716796875p-193 {+ 3596026561431611 -193 (1.43257e-058)}
; -1.1000997601311859330763809339259751141071319580078125p99 = 1.7984782971330008916055476220208220183849334716796875p-193 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001100010 #b0001100110100000001000110100110000011001110100111101)))
(assert (= y (fp #b0 #b01100111110 #b1100110001101001000100101101110011000000100000111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
