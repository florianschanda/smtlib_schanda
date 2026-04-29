(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0815985912685324166204736684449017047882080078125p-656 {+ 367487385230920 -656 (3.61734e-198)}
; Y = -1.925792018789363790887136929086409509181976318359375p-780 {- 4169396590842358 -780 (-3.0284e-235)}
; 1.0815985912685324166204736684449017047882080078125p-656 = -1.925792018789363790887136929086409509181976318359375p-780 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101111 #b0001010011100011101001010011000011100101111001001000)))
(assert (= y (fp #b1 #b00011110011 #b1110110100000000101101001010101110011001000111110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
