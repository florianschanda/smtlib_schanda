(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6796813316510597058339726572739891707897186279296875 241 {- 3061012591954395 241 (-5.93548e+072)}
; -1.6796813316510597058339726572739891707897186279296875 241 I == -1.6796813316510597058339726572739891707897186279296875 241
; [HW: -1.6796813316510597058339726572739891707897186279296875 241] 

; mpf : - 3061012591954395 241
; mpfd: - 3061012591954395 241 (-5.93548e+072) class: Neg. norm. non-zero
; hwf : - 3061012591954395 241 (-5.93548e+072) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011110000 #b1010110111111111100110001000001100100100100111011011)))
(assert (= r (fp #b1 #b10011110000 #b1010110111111111100110001000001100100100100111011011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
