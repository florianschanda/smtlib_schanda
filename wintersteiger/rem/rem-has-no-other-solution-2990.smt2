(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5779959114157244837173266205354593694210052490234375p707 {- 2603062171273527 707 (-1.06246e+213)}
; Y = 1.465949888931992628471334683126769959926605224609375p971 {+ 2098451746167446 971 (2.9258e+292)}
; -1.5779959114157244837173266205354593694210052490234375p707 % 1.465949888931992628471334683126769959926605224609375p971 == -1.5779959114157244837173266205354593694210052490234375p707
; [HW: -1.5779959114157244837173266205354593694210052490234375p707] 

; mpf : - 2603062171273527 707
; mpfd: - 2603062171273527 707 (-1.06246e+213) class: Neg. norm. non-zero
; hwf : - 2603062171273527 707 (-1.06246e+213) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011000010 #b1001001111110111100010100100000011000000100100110111)))
(assert (= y (fp #b0 #b11111001010 #b0111011101001000011111011110111010001001101010010110)))
(assert (= r (fp #b1 #b11011000010 #x93f78a40c0937)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
