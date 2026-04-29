(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2755567034512236279653052406501956284046173095703125p-943 {+ 1240997066982373 -943 (1.71559e-284)}
; Y = -1.37564823742752562196756116463802754878997802734375p-283 {- 1691769262100988 -283 (-8.85154e-086)}
; 1.2755567034512236279653052406501956284046173095703125p-943 < -1.37564823742752562196756116463802754878997802734375p-283 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001010000 #b0100011010001010111000100101010110000100001111100101)))
(assert (= y (fp #b1 #b01011100100 #b0110000000101010011110111001111010001101000111111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
