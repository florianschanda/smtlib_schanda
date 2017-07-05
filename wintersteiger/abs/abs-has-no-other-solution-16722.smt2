(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1663440855811852969736719387583434581756591796875p673 {- 749147161838712 673 (-4.57103e+202)}
; -1.1663440855811852969736719387583434581756591796875p673 | == 1.1663440855811852969736719387583434581756591796875p673
; [HW: 1.1663440855811852969736719387583434581756591796875p673] 

; mpf : + 749147161838712 673
; mpfd: + 749147161838712 673 (4.57103e+202) class: Pos. norm. non-zero
; hwf : + 749147161838712 673 (4.57103e+202) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010100000 #b0010101010010101100001101010011101110100010001111000)))
(assert (= r (fp #b0 #b11010100000 #b0010101010010101100001101010011101110100010001111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
