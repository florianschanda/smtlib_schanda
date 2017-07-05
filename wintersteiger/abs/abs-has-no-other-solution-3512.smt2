(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7489705386957530297564744614646770060062408447265625p845 {- 3373063438981673 845 (-4.10326e+254)}
; -1.7489705386957530297564744614646770060062408447265625p845 | == 1.7489705386957530297564744614646770060062408447265625p845
; [HW: 1.7489705386957530297564744614646770060062408447265625p845] 

; mpf : + 3373063438981673 845
; mpfd: + 3373063438981673 845 (4.10326e+254) class: Pos. norm. non-zero
; hwf : + 3373063438981673 845 (4.10326e+254) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101001100 #b1011111110111100100010001000000101011101101000101001)))
(assert (= r (fp #b0 #b11101001100 #b1011111110111100100010001000000101011101101000101001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
