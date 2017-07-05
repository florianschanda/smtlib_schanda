(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2011105314702048563191283392370678484439849853515625 213 {- 905721314589497 213 (-1.58115e+064)}
; -1.2011105314702048563191283392370678484439849853515625 213 I == -1.2011105314702048563191283392370678484439849853515625 213
; [HW: -1.2011105314702048563191283392370678484439849853515625 213] 

; mpf : - 905721314589497 213
; mpfd: - 905721314589497 213 (-1.58115e+064) class: Neg. norm. non-zero
; hwf : - 905721314589497 213 (-1.58115e+064) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011010100 #b0011001101111011111110101101001110001011101100111001)))
(assert (= r (fp #b1 #b10011010100 #b0011001101111011111110101101001110001011101100111001)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
