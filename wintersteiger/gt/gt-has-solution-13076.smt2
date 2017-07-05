(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.122235171302347733757187597802840173244476318359375p956 {- 550498271928822 956 (-6.83533e+287)}
; Y = -1.361139239447015203410273898043669760227203369140625p-356 {- 1626426544202442 -356 (-9.27308e-108)}
; -1.122235171302347733757187597802840173244476318359375p956 > -1.361139239447015203410273898043669760227203369140625p-356 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111011 #b0001111101001010110011011101111100101010000111110110)))
(assert (= y (fp #b1 #b01010011011 #b0101110001110011100111110000011010111010001011001010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
