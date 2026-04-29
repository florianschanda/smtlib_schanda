(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.71072804801128430796097745769657194614410400390625p-58 {+ 3200834572185380 -58 (5.93528e-018)}
; 1.71072804801128430796097745769657194614410400390625p-58 | == 1.71072804801128430796097745769657194614410400390625p-58
; [HW: 1.71072804801128430796097745769657194614410400390625p-58] 

; mpf : + 3200834572185380 -58
; mpfd: + 3200834572185380 -58 (5.93528e-018) class: Pos. norm. non-zero
; hwf : + 3200834572185380 -58 (5.93528e-018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111000101 #b1011010111110010010001011111101010001110111100100100)))
(assert (= r (fp #b0 #b01111000101 #b1011010111110010010001011111101010001110111100100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
