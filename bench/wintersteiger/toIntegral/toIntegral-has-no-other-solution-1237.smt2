(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4277228760976530264059647379326634109020233154296875 210 {- 1926292585411227 210 (-2.34932e+063)}
; -1.4277228760976530264059647379326634109020233154296875 210 I == -1.4277228760976530264059647379326634109020233154296875 210
; [HW: -1.4277228760976530264059647379326634109020233154296875 210] 

; mpf : - 1926292585411227 210
; mpfd: - 1926292585411227 210 (-2.34932e+063) class: Neg. norm. non-zero
; hwf : - 1926292585411227 210 (-2.34932e+063) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011010001 #b0110110101111111001111110001010010010111001010011011)))
(assert (= r (fp #b1 #b10011010001 #b0110110101111111001111110001010010010111001010011011)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
