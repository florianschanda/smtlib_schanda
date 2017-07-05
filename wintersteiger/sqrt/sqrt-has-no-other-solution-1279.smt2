(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.939724381076378012522809513029642403125762939453125p673 {+ 4232142372446546 673 (7.60199e+202)}
; 1.939724381076378012522809513029642403125762939453125p673 S == 1.96963163108048089355861520743928849697113037109375p336
; [HW: 1.96963163108048089355861520743928849697113037109375p336] 

; mpf : + 4366832652420700 336
; mpfd: + 4366832652420700 336 (2.75717e+101) class: Pos. norm. non-zero
; hwf : + 4366832652420700 336 (2.75717e+101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010100000 #b1111000010010001110001101110101111111010000101010010)))
(assert (= r (fp #b0 #b10101001111 #b1111100000111001110001110101000010101000011001011100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
