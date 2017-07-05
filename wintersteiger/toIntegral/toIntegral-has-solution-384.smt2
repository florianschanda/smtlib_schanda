(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1324293906484983462945592691539786756038665771484375 173 {- 596408954377479 173 (-1.35581e+052)}
; -1.1324293906484983462945592691539786756038665771484375 173 I == -1.1324293906484983462945592691539786756038665771484375 173
; [HW: -1.1324293906484983462945592691539786756038665771484375 173] 

; mpf : - 596408954377479 173
; mpfd: - 596408954377479 173 (-1.35581e+052) class: Neg. norm. non-zero
; hwf : - 596408954377479 173 (-1.35581e+052) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101100 #b0010000111100110111001000111110111011101010100000111)))
(assert (= r (fp #b1 #b10010101100 #b0010000111100110111001000111110111011101010100000111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
