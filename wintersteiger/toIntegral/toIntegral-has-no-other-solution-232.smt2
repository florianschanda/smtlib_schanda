(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.776831482593768551936364019638858735561370849609375 330 {+ 3498537975538966 330 (3.88638e+099)}
; 1.776831482593768551936364019638858735561370849609375 330 I == 1.776831482593768551936364019638858735561370849609375 330
; [HW: 1.776831482593768551936364019638858735561370849609375 330] 

; mpf : + 3498537975538966 330
; mpfd: + 3498537975538966 330 (3.88638e+099) class: Pos. norm. non-zero
; hwf : + 3498537975538966 330 (3.88638e+099) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101001001 #b1100011011011110011011011001010000111110010100010110)))
(assert (= r (fp #b0 #b10101001001 #b1100011011011110011011011001010000111110010100010110)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
