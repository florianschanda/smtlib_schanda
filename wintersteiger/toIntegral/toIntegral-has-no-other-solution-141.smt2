(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.492452812091561664686878430075012147426605224609375 643 {+ 2217810301033110 643 (5.44738e+193)}
; 1.492452812091561664686878430075012147426605224609375 643 I == 1.492452812091561664686878430075012147426605224609375 643
; [HW: 1.492452812091561664686878430075012147426605224609375 643] 

; mpf : + 2217810301033110 643
; mpfd: + 2217810301033110 643 (5.44738e+193) class: Pos. norm. non-zero
; hwf : + 2217810301033110 643 (5.44738e+193) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000010 #b0111111000010001011000110011001011000001101010010110)))
(assert (= r (fp #b0 #b11010000010 #b0111111000010001011000110011001011000001101010010110)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
