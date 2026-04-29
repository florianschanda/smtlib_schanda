(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.665352059686231456225868896581232547760009765625 477 {+ 2996479288073104 477 (6.49851e+143)}
; 1.665352059686231456225868896581232547760009765625 477 I == 1.665352059686231456225868896581232547760009765625 477
; [HW: 1.665352059686231456225868896581232547760009765625 477] 

; mpf : + 2996479288073104 477
; mpfd: + 2996479288073104 477 (6.49851e+143) class: Pos. norm. non-zero
; hwf : + 2996479288073104 477 (6.49851e+143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011100 #b1010101001010100100000110011100010101101101110010000)))
(assert (= r (fp #b0 #b10111011100 #b1010101001010100100000110011100010101101101110010000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
