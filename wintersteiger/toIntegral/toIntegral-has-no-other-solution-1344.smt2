(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4976678668918015358002548964577727019786834716796875 828 {- 2241296819888187 828 (-2.68072e+249)}
; -1.4976678668918015358002548964577727019786834716796875 828 I == -1.4976678668918015358002548964577727019786834716796875 828
; [HW: -1.4976678668918015358002548964577727019786834716796875 828] 

; mpf : - 2241296819888187 828
; mpfd: - 2241296819888187 828 (-2.68072e+249) class: Neg. norm. non-zero
; hwf : - 2241296819888187 828 (-2.68072e+249) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100111011 #b0111111101100111001010010100110010010010000000111011)))
(assert (= r (fp #b1 #b11100111011 #b0111111101100111001010010100110010010010000000111011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
