(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.064287829630750525922167071257717907428741455078125p-415 {+ 289526645569506 -415 (1.2578e-125)}
; Y = 1.5054117679575240718037321130395866930484771728515625p-803 {+ 2276172249842169 -803 (2.82208e-242)}
; 1.064287829630750525922167071257717907428741455078125p-415 < 1.5054117679575240718037321130395866930484771728515625p-803 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001100000 #b0001000001110101001010101100110111001011011111100010)))
(assert (= y (fp #b0 #b00011011100 #b1000000101100010101010100110011001100100000111111001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
