(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.28266965453953130094078005640767514705657958984375p-358 {+ 1273030950853180 -358 (2.18462e-108)}
; 1.28266965453953130094078005640767514705657958984375p-358 | == 1.28266965453953130094078005640767514705657958984375p-358
; [HW: 1.28266965453953130094078005640767514705657958984375p-358] 

; mpf : + 1273030950853180 -358
; mpfd: + 1273030950853180 -358 (2.18462e-108) class: Pos. norm. non-zero
; hwf : + 1273030950853180 -358 (2.18462e-108) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010011001 #b0100100001011101000010011101100111010001101000111100)))
(assert (= r (fp #b0 #b01010011001 #b0100100001011101000010011101100111010001101000111100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
