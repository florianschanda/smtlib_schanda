(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.542619375060067188343282396090216934680938720703125p87 {- 2443740415324530 87 (-2.38709e+026)}
; -1.542619375060067188343282396090216934680938720703125p87 | == 1.542619375060067188343282396090216934680938720703125p87
; [HW: 1.542619375060067188343282396090216934680938720703125p87] 

; mpf : + 2443740415324530 87
; mpfd: + 2443740415324530 87 (2.38709e+026) class: Pos. norm. non-zero
; hwf : + 2443740415324530 87 (2.38709e+026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001010110 #b1000101011101001000110100111011000001111000101110010)))
(assert (= r (fp #b0 #b10001010110 #b1000101011101001000110100111011000001111000101110010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
