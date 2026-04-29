(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.45781269299917237702857164549641311168670654296875p-902 {+ 2061805073596556 -902 (4.31167e-272)}
; Y = -1.54516388913337010535542503930628299713134765625p-836 {- 2455199887956896 -836 (-3.37208e-252)}
; 1.45781269299917237702857164549641311168670654296875p-902 > -1.54516388913337010535542503930628299713134765625p-836 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001111001 #b0111010100110011001101100111000000100000000010001100)))
(assert (= y (fp #b1 #b00010111011 #b1000101110001111110111000101001011001001101110100000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
