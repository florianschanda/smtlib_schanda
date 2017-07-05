(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.365934594349571096216777732479386031627655029296875p491 {+ 1648022902754702 491 (8.73289e+147)}
; 1.365934594349571096216777732479386031627655029296875p491 | == 1.365934594349571096216777732479386031627655029296875p491
; [HW: 1.365934594349571096216777732479386031627655029296875p491] 

; mpf : + 1648022902754702 491
; mpfd: + 1648022902754702 491 (8.73289e+147) class: Pos. norm. non-zero
; hwf : + 1648022902754702 491 (8.73289e+147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101010 #b0101110110101101111000111011101100110100110110001110)))
(assert (= r (fp #b0 #b10111101010 #b0101110110101101111000111011101100110100110110001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
