(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3866435231312603804099126136861741542816162109375 242 {+ 1741287626699160 242 (9.79995e+072)}
; 1.3866435231312603804099126136861741542816162109375 242 I == 1.3866435231312603804099126136861741542816162109375 242
; [HW: 1.3866435231312603804099126136861741542816162109375 242] 

; mpf : + 1741287626699160 242
; mpfd: + 1741287626699160 242 (9.79995e+072) class: Pos. norm. non-zero
; hwf : + 1741287626699160 242 (9.79995e+072) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011110001 #b0110001011111011000100011110011100001111000110011000)))
(assert (= r (fp #b0 #b10011110001 #b0110001011111011000100011110011100001111000110011000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
