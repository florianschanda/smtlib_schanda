(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.057285218370591639569511244189925491809844970703125p447 {+ 257989688107634 447 (3.84238e+134)}
; 1.057285218370591639569511244189925491809844970703125p447 | == 1.057285218370591639569511244189925491809844970703125p447
; [HW: 1.057285218370591639569511244189925491809844970703125p447] 

; mpf : + 257989688107634 447
; mpfd: + 257989688107634 447 (3.84238e+134) class: Pos. norm. non-zero
; hwf : + 257989688107634 447 (3.84238e+134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110111110 #b0000111010101010001111100111101101110010001001110010)))
(assert (= r (fp #b0 #b10110111110 #b0000111010101010001111100111101101110010001001110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
