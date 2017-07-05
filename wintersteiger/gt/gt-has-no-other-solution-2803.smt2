(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2244870625723784929306248159264214336872100830078125p-955 {+ 1010999851350461 -955 (4.02076e-288)}
; Y = -1.595634231585658202590138898813165724277496337890625p959 {- 2682498103418282 959 (-7.77498e+288)}
; 1.2244870625723784929306248159264214336872100830078125p-955 > -1.595634231585658202590138898813165724277496337890625p959 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001000100 #b0011100101110111111110111111000000011111100110111101)))
(assert (= y (fp #b1 #b11110111110 #b1001100001111011011111000010100100001001110110101010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
