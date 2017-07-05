(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.292793977902030544413491952582262456417083740234375p-169 {+ 1318626849775910 -169 (1.72767e-051)}
; Y = -1.1409408909610851967642020099447108805179595947265625p642 {- 634741344013609 642 (-2.08219e+193)}
; 1.292793977902030544413491952582262456417083740234375p-169 > -1.1409408909610851967642020099447108805179595947265625p642 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101010110 #b0100101011110100100010111100111110001110000100100110)))
(assert (= y (fp #b1 #b11010000001 #b0010010000010100101100111100010101011000110100101001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
