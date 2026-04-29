(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3590967823766357813752847505384124815464019775390625p319 {- 1617228135301361 319 (-1.45151e+096)}
; -1.3590967823766357813752847505384124815464019775390625p319 | == 1.3590967823766357813752847505384124815464019775390625p319
; [HW: 1.3590967823766357813752847505384124815464019775390625p319] 

; mpf : + 1617228135301361 319
; mpfd: + 1617228135301361 319 (1.45151e+096) class: Pos. norm. non-zero
; hwf : + 1617228135301361 319 (1.45151e+096) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100111110 #b0101101111101101110001000100100001101000000011110001)))
(assert (= r (fp #b0 #b10100111110 #b0101101111101101110001000100100001101000000011110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
