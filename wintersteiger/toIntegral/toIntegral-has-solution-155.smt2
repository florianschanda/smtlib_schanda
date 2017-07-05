(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5363911110435914952887515028123743832111358642578125 991 {- 2415690807820765 991 (-3.21534e+298)}
; -1.5363911110435914952887515028123743832111358642578125 991 I == -1.5363911110435914952887515028123743832111358642578125 991
; [HW: -1.5363911110435914952887515028123743832111358642578125 991] 

; mpf : - 2415690807820765 991
; mpfd: - 2415690807820765 991 (-3.21534e+298) class: Neg. norm. non-zero
; hwf : - 2415690807820765 991 (-3.21534e+298) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111011110 #b1000100101010000111011011000011111001100000111011101)))
(assert (= r (fp #b1 #b11111011110 #b1000100101010000111011011000011111001100000111011101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
