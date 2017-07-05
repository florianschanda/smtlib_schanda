(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.554070296519574956306541935191489756107330322265625 35 {+ 2495310780942618 35 (5.33974e+010)}
; 1.554070296519574956306541935191489756107330322265625 35 I == 1.55407029649359174072742462158203125 35
; [HW: 1.55407029649359174072742462158203125 35] 

; mpf : + 2495310780825600 35
; mpfd: + 2495310780825600 35 (5.33974e+010) class: Pos. norm. non-zero
; hwf : + 2495310780825600 35 (5.33974e+010) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100010 #b1000110111010111100011010000101100111100100100011010)))
(assert (= r (fp #b0 #b10000100010 #b1000110111010111100011010000101100100000000000000000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
