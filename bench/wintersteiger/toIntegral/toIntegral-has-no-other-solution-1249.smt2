(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.672531958345209179839230273501016199588775634765625 729 {+ 3028814676998234 729 (4.72325e+219)}
; 1.672531958345209179839230273501016199588775634765625 729 I == 1.672531958345209179839230273501016199588775634765625 729
; [HW: 1.672531958345209179839230273501016199588775634765625 729] 

; mpf : + 3028814676998234 729
; mpfd: + 3028814676998234 729 (4.72325e+219) class: Pos. norm. non-zero
; hwf : + 3028814676998234 729 (4.72325e+219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011011000 #b1010110000101011000011011110111010011011100001011010)))
(assert (= r (fp #b0 #b11011011000 #b1010110000101011000011011110111010011011100001011010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
