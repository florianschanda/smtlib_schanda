(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4794156844020023289232312890817411243915557861328125p14 {+ 2159096297628429 14 (24238.7)}
; Y = -1.5455049413227379684343532062484882771968841552734375p478 {- 2456735850469847 478 (-1.20617e+144)}
; 1.4794156844020023289232312890817411243915557861328125p14 = -1.5455049413227379684343532062484882771968841552734375p478 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000001101 #b0111101010111010111111000111110110110010001100001101)))
(assert (= y (fp #b1 #b10111011101 #b1000101110100110001101100011101011001001100111010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
