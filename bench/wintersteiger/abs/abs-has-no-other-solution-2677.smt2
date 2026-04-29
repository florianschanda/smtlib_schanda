(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.24765159993838548047051517642103135585784912109375p1011 {- 1115323653200220 1011 (-2.73791e+304)}
; -1.24765159993838548047051517642103135585784912109375p1011 | == 1.24765159993838548047051517642103135585784912109375p1011
; [HW: 1.24765159993838548047051517642103135585784912109375p1011] 

; mpf : + 1115323653200220 1011
; mpfd: + 1115323653200220 1011 (2.73791e+304) class: Pos. norm. non-zero
; hwf : + 1115323653200220 1011 (2.73791e+304) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110010 #b0011111101100110000110000110001010001001100101011100)))
(assert (= r (fp #b0 #b11111110010 #b0011111101100110000110000110001010001001100101011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
