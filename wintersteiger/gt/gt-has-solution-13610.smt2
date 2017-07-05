(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8509904652536068869750351950642652809619903564453125p69 {- 3832520342211989 69 (-1.09263e+021)}
; Y = 1.7906165989630051793568554785451851785182952880859375p-478 {+ 3560620620482719 -478 (2.29438e-144)}
; -1.8509904652536068869750351950642652809619903564453125p69 > 1.7906165989630051793568554785451851785182952880859375p-478 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001000100 #b1101100111011010100000101101100101111000110110010101)))
(assert (= y (fp #b0 #b01000100001 #b1100101001100101110110010111010000111000100010011111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
