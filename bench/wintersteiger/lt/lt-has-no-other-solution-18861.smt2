(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5849986078791762356132721834001131355762481689453125p108 {+ 2634599512456917 108 (5.14361e+032)}
; Y = 1.0661895895348985074946313034160993993282318115234375p189 {+ 298091410765175 189 (8.36573e+056)}
; 1.5849986078791762356132721834001131355762481689453125p108 < 1.0661895895348985074946313034160993993282318115234375p189 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001101011 #b1001010111000010011110000000000100001011111011010101)))
(assert (= y (fp #b0 #b10010111100 #b0001000011110001110011010000101001100011010101110111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
