(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4182711673994206069693291283329017460346221923828125p972 {- 1883725873639853 972 (-5.66129e+292)}
; Y = -1.62960654317450792660793013055808842182159423828125p-96 {- 2835495793230740 -96 (-2.05685e-029)}
; -1.4182711673994206069693291283329017460346221923828125p972 > -1.62960654317450792660793013055808842182159423828125p-96 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111001011 #b0110101100010011110100011011100011010111000110101101)))
(assert (= y (fp #b1 #b01110011111 #b1010000100101101111001001111100001001000001110010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
