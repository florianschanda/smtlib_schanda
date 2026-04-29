(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.23964665762636006007824107655324041843414306640625 710 {- 1079272597986660 710 (-6.67721e+213)}
; -1.23964665762636006007824107655324041843414306640625 710 I == -1.23964665762636006007824107655324041843414306640625 710
; [HW: -1.23964665762636006007824107655324041843414306640625 710] 

; mpf : - 1079272597986660 710
; mpfd: - 1079272597986660 710 (-6.67721e+213) class: Neg. norm. non-zero
; hwf : - 1079272597986660 710 (-6.67721e+213) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011000101 #b0011110101011001011110111011110100011001110101100100)))
(assert (= r (fp #b1 #b11011000101 #b0011110101011001011110111011110100011001110101100100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
