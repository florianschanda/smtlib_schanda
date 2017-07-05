(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.416681746568909883166043073288165032863616943359375p-571 {- 1876567758579830 -571 (-1.83293e-172)}
; Y = -1.69231046758134429097708562039770185947418212890625p963 {- 3117889163824036 963 (-1.31937e+290)}
; -1.416681746568909883166043073288165032863616943359375p-571 > -1.69231046758134429097708562039770185947418212890625p963 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111000100 #b0110101010101011101001111010101001011010100001110110)))
(assert (= y (fp #b1 #b11111000010 #b1011000100111011010000100100000011110000101110100100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
