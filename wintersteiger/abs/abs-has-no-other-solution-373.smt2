(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8167700311612724473064872654504142701625823974609375p-342 {- 3678405207985295 -342 (-2.02788e-103)}
; -1.8167700311612724473064872654504142701625823974609375p-342 | == 1.8167700311612724473064872654504142701625823974609375p-342
; [HW: 1.8167700311612724473064872654504142701625823974609375p-342] 

; mpf : + 3678405207985295 -342
; mpfd: + 3678405207985295 -342 (2.02788e-103) class: Pos. norm. non-zero
; hwf : + 3678405207985295 -342 (2.02788e-103) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010101001 #b1101000100010111110101110011110000110000110010001111)))
(assert (= r (fp #b0 #b01010101001 #b1101000100010111110101110011110000110000110010001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
