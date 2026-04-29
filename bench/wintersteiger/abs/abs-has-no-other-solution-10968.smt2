(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.818693089101753201930478098802268505096435546875p731 {- 3687065891009456 731 (-2.05441e+220)}
; -1.818693089101753201930478098802268505096435546875p731 | == 1.818693089101753201930478098802268505096435546875p731
; [HW: 1.818693089101753201930478098802268505096435546875p731] 

; mpf : + 3687065891009456 731
; mpfd: + 3687065891009456 731 (2.05441e+220) class: Pos. norm. non-zero
; hwf : + 3687065891009456 731 (2.05441e+220) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011011010 #b1101000110010101110111101100101100100111001110110000)))
(assert (= r (fp #b0 #b11011011010 #b1101000110010101110111101100101100100111001110110000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
