(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.948013366659992140483836919884197413921356201171875 375 {- 4269472644832190 375 (-1.49913e+113)}
; -1.948013366659992140483836919884197413921356201171875 375 I == -1.948013366659992140483836919884197413921356201171875 375
; [HW: -1.948013366659992140483836919884197413921356201171875 375] 

; mpf : - 4269472644832190 375
; mpfd: - 4269472644832190 375 (-1.49913e+113) class: Neg. norm. non-zero
; hwf : - 4269472644832190 375 (-1.49913e+113) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101110110 #b1111001010110001000000010000010111111001101110111110)))
(assert (= r (fp #b1 #b10101110110 #b1111001010110001000000010000010111111001101110111110)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
