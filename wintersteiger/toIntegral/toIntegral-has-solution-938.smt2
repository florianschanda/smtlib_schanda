(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3361221256844661997575940404203720390796661376953125 597 {- 1513759479983541 597 (-6.93032e+179)}
; -1.3361221256844661997575940404203720390796661376953125 597 I == -1.3361221256844661997575940404203720390796661376953125 597
; [HW: -1.3361221256844661997575940404203720390796661376953125 597] 

; mpf : - 1513759479983541 597
; mpfd: - 1513759479983541 597 (-6.93032e+179) class: Neg. norm. non-zero
; hwf : - 1513759479983541 597 (-6.93032e+179) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001010100 #b0101011000001100000110011000000101000110110110110101)))
(assert (= r (fp #b1 #b11001010100 #b0101011000001100000110011000000101000110110110110101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
