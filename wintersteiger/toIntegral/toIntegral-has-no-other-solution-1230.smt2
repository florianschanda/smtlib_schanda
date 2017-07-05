(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3327224697169268718965895459405146539211273193359375 353 {+ 1498448790634943 353 (2.44528e+106)}
; 1.3327224697169268718965895459405146539211273193359375 353 I == 1.3327224697169268718965895459405146539211273193359375 353
; [HW: 1.3327224697169268718965895459405146539211273193359375 353] 

; mpf : + 1498448790634943 353
; mpfd: + 1498448790634943 353 (2.44528e+106) class: Pos. norm. non-zero
; hwf : + 1498448790634943 353 (2.44528e+106) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101100000 #b0101010100101101010011001011111000010100000110111111)))
(assert (= r (fp #b0 #b10101100000 #b0101010100101101010011001011111000010100000110111111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
