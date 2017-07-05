(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.39283481972747313903937538270838558673858642578125 306 {- 1769170747742804 306 (-1.81584e+092)}
; -1.39283481972747313903937538270838558673858642578125 306 I == -1.39283481972747313903937538270838558673858642578125 306
; [HW: -1.39283481972747313903937538270838558673858642578125 306] 

; mpf : - 1769170747742804 306
; mpfd: - 1769170747742804 306 (-1.81584e+092) class: Neg. norm. non-zero
; hwf : - 1769170747742804 306 (-1.81584e+092) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110001 #b0110010010010000110100101001111101110101101001010100)))
(assert (= r (fp #b1 #b10100110001 #b0110010010010000110100101001111101110101101001010100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
