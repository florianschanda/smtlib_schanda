(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.25718572451440291359858747455291450023651123046875p-785 {- 1158261533088076 -785 (-6.17807e-237)}
; Y = 1.034445186582755749071793616167269647121429443359375p-4 {+ 155127329458806 -4 (0.0646528)}
; -1.25718572451440291359858747455291450023651123046875p-785 > 1.034445186582755749071793616167269647121429443359375p-4 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011101110 #b0100000111010110111011000111001111001001100101001100)))
(assert (= y (fp #b0 #b01111111011 #b0000100011010001011001100101010111100000101001110110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
