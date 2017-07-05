(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.307340730694104724562976116430945694446563720703125 652 {+ 1384139600229746 652 (2.44313e+196)}
; 1.307340730694104724562976116430945694446563720703125 652 I == 1.307340730694104724562976116430945694446563720703125 652
; [HW: 1.307340730694104724562976116430945694446563720703125 652] 

; mpf : + 1384139600229746 652
; mpfd: + 1384139600229746 652 (2.44313e+196) class: Pos. norm. non-zero
; hwf : + 1384139600229746 652 (2.44313e+196) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010001011 #b0100111010101101111000011101001100001111010101110010)))
(assert (= r (fp #b0 #b11010001011 #b0100111010101101111000011101001100001111010101110010)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
