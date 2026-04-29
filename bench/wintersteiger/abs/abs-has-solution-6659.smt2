(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8030022202948019494073150781332515180110931396484375p-34 {- 3616400500097351 -34 (-1.04949e-010)}
; -1.8030022202948019494073150781332515180110931396484375p-34 | == 1.8030022202948019494073150781332515180110931396484375p-34
; [HW: 1.8030022202948019494073150781332515180110931396484375p-34] 

; mpf : + 3616400500097351 -34
; mpfd: + 3616400500097351 -34 (1.04949e-010) class: Pos. norm. non-zero
; hwf : + 3616400500097351 -34 (1.04949e-010) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111011101 #b1100110110010001100011011011001011001000000101000111)))
(assert (= r (fp #b0 #b01111011101 #b1100110110010001100011011011001011001000000101000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
