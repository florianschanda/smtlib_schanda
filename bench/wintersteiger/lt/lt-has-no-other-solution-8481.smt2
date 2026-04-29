(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.358965829087000809494156783330254256725311279296875p117 {- 1616638374114958 117 (-2.25797e+035)}
; Y = -1.97597137465181393878310700529254972934722900390625p668 {- 4395384319206180 668 (-2.42001e+201)}
; -1.358965829087000809494156783330254256725311279296875p117 < -1.97597137465181393878310700529254972934722900390625p668 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001110100 #b0101101111100101001011110100000001001111011010001110)))
(assert (= y (fp #b1 #b11010011011 #b1111100111011001010000101000111111110110001100100100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
