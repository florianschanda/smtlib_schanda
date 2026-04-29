(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.889092976740791574030708943610079586505889892578125p708 {- 4004118798747554 708 (-2.54384e+213)}
; Y = 1.5416944283981492969104465373675338923931121826171875p617 {+ 2439574825882579 617 (8.38505e+185)}
; -1.889092976740791574030708943610079586505889892578125p708 < 1.5416944283981492969104465373675338923931121826171875p617 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000011 #b1110001110011011100110001110101000110100011110100010)))
(assert (= y (fp #b0 #b11001101000 #b1000101010101100011111000110111001100101001111010011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
