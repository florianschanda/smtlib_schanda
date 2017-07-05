(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7628916183019061048042885886388830840587615966796875p58 {- 3435758407908539 58 (-5.08119e+017)}
; Y = 1.93187142771971576138412274303846061229705810546875p745 {+ 4196775814635724 745 (3.5754e+224)}
; -1.7628916183019061048042885886388830840587615966796875p58 > 1.93187142771971576138412274303846061229705810546875p745 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111001 #b1100001101001100110111010111011011111111110010111011)))
(assert (= y (fp #b0 #b11011101000 #b1110111010001111001000000011101000100010000011001100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
