(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.314363963638465637728813817375339567661285400390625p-49 {- 1415769429500906 -49 (-2.33478e-015)}
; -1.314363963638465637728813817375339567661285400390625p-49 | == 1.314363963638465637728813817375339567661285400390625p-49
; [HW: 1.314363963638465637728813817375339567661285400390625p-49] 

; mpf : + 1415769429500906 -49
; mpfd: + 1415769429500906 -49 (2.33478e-015) class: Pos. norm. non-zero
; hwf : + 1415769429500906 -49 (2.33478e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111001110 #b0101000001111010001010000001111011011110001111101010)))
(assert (= r (fp #b0 #b01111001110 #b0101000001111010001010000001111011011110001111101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
