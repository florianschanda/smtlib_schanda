(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9617904384150772756356673198752105236053466796875p-486 {+ 4331519060054648 -486 (9.81917e-147)}
; 1.9617904384150772756356673198752105236053466796875p-486 | == 1.9617904384150772756356673198752105236053466796875p-486
; [HW: 1.9617904384150772756356673198752105236053466796875p-486] 

; mpf : + 4331519060054648 -486
; mpfd: + 4331519060054648 -486 (9.81917e-147) class: Pos. norm. non-zero
; hwf : + 4331519060054648 -486 (9.81917e-147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000011001 #b1111011000110111111001011110111010011001001001111000)))
(assert (= r (fp #b0 #b01000011001 #b1111011000110111111001011110111010011001001001111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
