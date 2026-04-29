(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7268419030735338015603019812260754406452178955078125p738 {- 3273404923839229 738 (-2.49683e+222)}
; Y = 1.9274469597816834554038223359384573996067047119140625p-400 {+ 4176849782478689 -400 (7.46422e-121)}
; -1.7268419030735338015603019812260754406452178955078125p738 > 1.9274469597816834554038223359384573996067047119140625p-400 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011100001 #b1011101000010010010011111001101100010000001011111101)))
(assert (= y (fp #b0 #b01001101111 #b1110110101101101001010011111100100001001011101100001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
