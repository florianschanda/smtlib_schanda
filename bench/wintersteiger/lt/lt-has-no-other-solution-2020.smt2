(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4666557473528871735624079519766382873058319091796875p79 {- 2101630649888763 79 (-8.86539e+023)}
; Y = -1.9177714581509299751616026696865446865558624267578125p165 {- 4133275196939805 165 (-8.96904e+049)}
; -1.4666557473528871735624079519766382873058319091796875p79 < -1.9177714581509299751616026696865446865558624267578125p165 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001001110 #b0111011101110110110000000100010101011110111111111011)))
(assert (= y (fp #b1 #b10010100100 #b1110101011110011000100011111110111110101111000011101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
