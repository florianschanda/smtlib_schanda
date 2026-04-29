(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4213343549041261848486783492262475192546844482421875p99 {+ 1897521243744611 99 (9.00878e+029)}
; Y = -1.935369261992104572556172570330090820789337158203125p10 {- 4212528659761458 10 (-1981.82)}
; 1.4213343549041261848486783492262475192546844482421875p99 = -1.935369261992104572556172570330090820789337158203125p10 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001100010 #b0110101111011100100100010111101011111110100101100011)))
(assert (= y (fp #b1 #b10000001001 #b1110111101110100010111000010010111110000100100110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
