(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.704822169794250275032254648976959288120269775390625p-697 {+ 3174236861247850 -697 (2.59282e-210)}
; 1.704822169794250275032254648976959288120269775390625p-697 | == 1.704822169794250275032254648976959288120269775390625p-697
; [HW: 1.704822169794250275032254648976959288120269775390625p-697] 

; mpf : + 3174236861247850 -697
; mpfd: + 3174236861247850 -697 (2.59282e-210) class: Pos. norm. non-zero
; hwf : + 3174236861247850 -697 (2.59282e-210) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101000110 #b1011010001101111001110011100100011000011000101101010)))
(assert (= r (fp #b0 #b00101000110 #b1011010001101111001110011100100011000011000101101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
