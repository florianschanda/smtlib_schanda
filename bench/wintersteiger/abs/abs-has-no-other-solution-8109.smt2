(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7958739005996340321047455290681682527065277099609375p-121 {+ 3584297402174415 -121 (6.75533e-037)}
; 1.7958739005996340321047455290681682527065277099609375p-121 | == 1.7958739005996340321047455290681682527065277099609375p-121
; [HW: 1.7958739005996340321047455290681682527065277099609375p-121] 

; mpf : + 3584297402174415 -121
; mpfd: + 3584297402174415 -121 (6.75533e-037) class: Pos. norm. non-zero
; hwf : + 3584297402174415 -121 (6.75533e-037) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110000110 #b1100101110111110011001000101011011010000101111001111)))
(assert (= r (fp #b0 #b01110000110 #b1100101110111110011001000101011011010000101111001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
