(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8014685799796634757541369253885932266712188720703125p660 {+ 3609493598145573 660 (8.61834e+198)}
; 1.8014685799796634757541369253885932266712188720703125p660 | == 1.8014685799796634757541369253885932266712188720703125p660
; [HW: 1.8014685799796634757541369253885932266712188720703125p660] 

; mpf : + 3609493598145573 660
; mpfd: + 3609493598145573 660 (8.61834e+198) class: Pos. norm. non-zero
; hwf : + 3609493598145573 660 (8.61834e+198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010011 #b1100110100101101000010110111101111001000110000100101)))
(assert (= r (fp #b0 #b11010010011 #b1100110100101101000010110111101111001000110000100101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
