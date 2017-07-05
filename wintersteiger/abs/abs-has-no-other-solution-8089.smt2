(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.962248255510993910633033010526560246944427490234375p-20 {- 4333580884957222 -20 (-1.87135e-006)}
; -1.962248255510993910633033010526560246944427490234375p-20 | == 1.962248255510993910633033010526560246944427490234375p-20
; [HW: 1.962248255510993910633033010526560246944427490234375p-20] 

; mpf : + 4333580884957222 -20
; mpfd: + 4333580884957222 -20 (1.87135e-006) class: Pos. norm. non-zero
; hwf : + 4333580884957222 -20 (1.87135e-006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111101011 #b1111011001010101111001101101010000001101100000100110)))
(assert (= r (fp #b0 #b01111101011 #b1111011001010101111001101101010000001101100000100110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
