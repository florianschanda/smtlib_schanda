(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.42654415495307862471463522524572908878326416015625 752 {- 1920984097303748 752 (-3.37942e+226)}
; -1.42654415495307862471463522524572908878326416015625 752 I == -1.42654415495307862471463522524572908878326416015625 752
; [HW: -1.42654415495307862471463522524572908878326416015625 752] 

; mpf : - 1920984097303748 752
; mpfd: - 1920984097303748 752 (-3.37942e+226) class: Neg. norm. non-zero
; hwf : - 1920984097303748 752 (-3.37942e+226) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011101111 #b0110110100110001111111110110101111010010110011000100)))
(assert (= r (fp #b1 #b11011101111 #b0110110100110001111111110110101111010010110011000100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
