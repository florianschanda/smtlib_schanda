(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4904577615158960401942067619529552757740020751953125p479 {- 2208825392003957 479 (-2.32642e+144)}
; -1.4904577615158960401942067619529552757740020751953125p479 | == 1.4904577615158960401942067619529552757740020751953125p479
; [HW: 1.4904577615158960401942067619529552757740020751953125p479] 

; mpf : + 2208825392003957 479
; mpfd: + 2208825392003957 479 (2.32642e+144) class: Pos. norm. non-zero
; hwf : + 2208825392003957 479 (2.32642e+144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111011110 #b0111110110001110101000111100110111000111101101110101)))
(assert (= r (fp #b0 #b10111011110 #b0111110110001110101000111100110111000111101101110101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
