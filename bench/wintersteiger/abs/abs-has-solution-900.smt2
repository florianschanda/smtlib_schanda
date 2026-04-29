(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4113852081567384022520172948134131729602813720703125p861 {- 1852714270160421 861 (-2.17006e+259)}
; -1.4113852081567384022520172948134131729602813720703125p861 | == 1.4113852081567384022520172948134131729602813720703125p861
; [HW: 1.4113852081567384022520172948134131729602813720703125p861] 

; mpf : + 1852714270160421 861
; mpfd: + 1852714270160421 861 (2.17006e+259) class: Pos. norm. non-zero
; hwf : + 1852714270160421 861 (2.17006e+259) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101011100 #b0110100101010000100010100111111100010111011000100101)))
(assert (= r (fp #b0 #b11101011100 #b0110100101010000100010100111111100010111011000100101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
