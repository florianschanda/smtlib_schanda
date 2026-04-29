(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.58914784106835593746609447407536208629608154296875 1015 {- 2653285997501580 1015 (-5.57969e+305)}
; -1.58914784106835593746609447407536208629608154296875 1015 I == -1.58914784106835593746609447407536208629608154296875 1015
; [HW: -1.58914784106835593746609447407536208629608154296875 1015] 

; mpf : - 2653285997501580 1015
; mpfd: - 2653285997501580 1015 (-5.57969e+305) class: Neg. norm. non-zero
; hwf : - 2653285997501580 1015 (-5.57969e+305) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110110 #b1001011011010010011001001001010111100101110010001100)))
(assert (= r (fp #b1 #b11111110110 #b1001011011010010011001001001010111100101110010001100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
