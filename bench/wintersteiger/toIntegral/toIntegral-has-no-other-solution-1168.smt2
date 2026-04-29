(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4274714721497072655864712942275218665599822998046875 354 {- 1925160362684939 354 (-5.23825e+106)}
; -1.4274714721497072655864712942275218665599822998046875 354 I == -1.4274714721497072655864712942275218665599822998046875 354
; [HW: -1.4274714721497072655864712942275218665599822998046875 354] 

; mpf : - 1925160362684939 354
; mpfd: - 1925160362684939 354 (-5.23825e+106) class: Neg. norm. non-zero
; hwf : - 1925160362684939 354 (-5.23825e+106) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101100001 #b0110110101101110110001010011100011011011001000001011)))
(assert (= r (fp #b1 #b10101100001 #b0110110101101110110001010011100011011011001000001011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
