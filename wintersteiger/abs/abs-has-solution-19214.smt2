(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.261759201116166906331272912211716175079345703125p841 {- 1178858640607568 841 (-1.85013e+253)}
; -1.261759201116166906331272912211716175079345703125p841 | == 1.261759201116166906331272912211716175079345703125p841
; [HW: 1.261759201116166906331272912211716175079345703125p841] 

; mpf : + 1178858640607568 841
; mpfd: + 1178858640607568 841 (1.85013e+253) class: Pos. norm. non-zero
; hwf : + 1178858640607568 841 (1.85013e+253) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101001000 #b0100001100000010101001101010100000111000100101010000)))
(assert (= r (fp #b0 #b11101001000 #b0100001100000010101001101010100000111000100101010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
