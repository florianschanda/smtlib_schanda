(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4372700256250208195041295766714029014110565185546875 698 {- 1969289124465131 698 (-1.89006e+210)}
; -1.4372700256250208195041295766714029014110565185546875 698 I == -1.4372700256250208195041295766714029014110565185546875 698
; [HW: -1.4372700256250208195041295766714029014110565185546875 698] 

; mpf : - 1969289124465131 698
; mpfd: - 1969289124465131 698 (-1.89006e+210) class: Neg. norm. non-zero
; hwf : - 1969289124465131 698 (-1.89006e+210) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111001 #b0110111111110000111011011010101110010100100111101011)))
(assert (= r (fp #b1 #b11010111001 #b0110111111110000111011011010101110010100100111101011)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
