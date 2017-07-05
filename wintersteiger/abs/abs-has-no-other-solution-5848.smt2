(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.455199482132810917534015970886684954166412353515625p-865 {- 2050036218112570 -865 (-5.91529e-261)}
; -1.455199482132810917534015970886684954166412353515625p-865 | == 1.455199482132810917534015970886684954166412353515625p-865
; [HW: 1.455199482132810917534015970886684954166412353515625p-865] 

; mpf : + 2050036218112570 -865
; mpfd: + 2050036218112570 -865 (5.91529e-261) class: Pos. norm. non-zero
; hwf : + 2050036218112570 -865 (5.91529e-261) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011110 #b0111010010000111111101000000100011101010101000111010)))
(assert (= r (fp #b0 #b00010011110 #b0111010010000111111101000000100011101010101000111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
