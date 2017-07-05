(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9880805383559605470367159796296618878841400146484375p-259 {- 4449919144351943 -259 (-2.14617e-078)}
; Y = 1.8112952095081700232270804917789064347743988037109375p-850 {+ 3653748803228463 -850 (2.41264e-256)}
; -1.9880805383559605470367159796296618878841400146484375p-259 * 1.8112952095081700232270804917789064347743988037109375p-850 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011111100 #b1111110011110010110110001001111000001101100011000111)))
(assert (= y (fp #b0 #b00010101101 #b1100111110110001000010101111100000111101001100101111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
