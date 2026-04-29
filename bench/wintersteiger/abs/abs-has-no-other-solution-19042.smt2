(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.59853747938137313866491240332834422588348388671875p713 {- 2695573169109228 713 (-6.88826e+214)}
; -1.59853747938137313866491240332834422588348388671875p713 | == 1.59853747938137313866491240332834422588348388671875p713
; [HW: 1.59853747938137313866491240332834422588348388671875p713] 

; mpf : + 2695573169109228 713
; mpfd: + 2695573169109228 713 (6.88826e+214) class: Pos. norm. non-zero
; hwf : + 2695573169109228 713 (6.88826e+214) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011001000 #b1001100100111001110000001001001101011111100011101100)))
(assert (= r (fp #b0 #b11011001000 #b1001100100111001110000001001001101011111100011101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
