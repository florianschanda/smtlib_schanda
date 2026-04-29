(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0243545757492931169707617300446145236492156982421875p547 {+ 109683258269283 547 (4.71909e+164)}
; Y = 1.7202333037272758975433362138574011623859405517578125p179 {+ 3243642438285981 179 (1.31812e+054)}
; 1.0243545757492931169707617300446145236492156982421875p547 = 1.7202333037272758975433362138574011623859405517578125p179 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000100010 #b0000011000111100000110011111101001011001111001100011)))
(assert (= y (fp #b0 #b10010110010 #b1011100001100001001101011011010011111111101010011101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
