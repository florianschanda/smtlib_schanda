(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.772566326994727159416243011946789920330047607421875p-765 {- 3479329422372446 -765 (-9.13389e-231)}
; Y = -1.179448982196534156940970206051133573055267333984375p528 {- 808166369352326 528 (-1.03637e+159)}
; -1.772566326994727159416243011946789920330047607421875p-765 < -1.179448982196534156940970206051133573055267333984375p528 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100000010 #b1100010111000110111010000010010001101110111001011110)))
(assert (= y (fp #b1 #b11000001111 #b0010110111110000010111100101010111010101101010000110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
