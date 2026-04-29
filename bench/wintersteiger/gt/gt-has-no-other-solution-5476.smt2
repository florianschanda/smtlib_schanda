(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1325185073842793936904627116746269166469573974609375p956 {- 596810300475535 956 (-6.89797e+287)}
; Y = 1.091742564352971900376587655046023428440093994140625p-599 {+ 413171778634058 -599 (5.26202e-181)}
; -1.1325185073842793936904627116746269166469573974609375p956 > 1.091742564352971900376587655046023428440093994140625p-599 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111011 #b0010000111101100101110111001111101010100100010001111)))
(assert (= y (fp #b0 #b00110101000 #b0001011101111100011100001101000110001100000101001010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
