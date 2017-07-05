(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.42087244862745532003600601456128060817718505859375 452 {- 1895441002809116 452 (-1.65239e+136)}
; -1.42087244862745532003600601456128060817718505859375 452 I == -1.42087244862745532003600601456128060817718505859375 452
; [HW: -1.42087244862745532003600601456128060817718505859375 452] 

; mpf : - 1895441002809116 452
; mpfd: - 1895441002809116 452 (-1.65239e+136) class: Neg. norm. non-zero
; hwf : - 1895441002809116 452 (-1.65239e+136) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000011 #b0110101110111110010010111111101010100100011100011100)))
(assert (= r (fp #b1 #b10111000011 #b0110101110111110010010111111101010100100011100011100)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
