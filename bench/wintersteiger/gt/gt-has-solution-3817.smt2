(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0607889639684791038831690457300283014774322509765625p-292 {+ 273769155476681 -292 (1.33312e-088)}
; Y = -1.777474629591740296064017456956207752227783203125p916 {- 3501434452119376 916 (-9.84644e+275)}
; 1.0607889639684791038831690457300283014774322509765625p-292 > -1.777474629591740296064017456956207752227783203125p916 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011011011 #b0000111110001111110111011001010000110011110011001001)))
(assert (= y (fp #b1 #b11110010011 #b1100011100001000100100111100101110010000111101010000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
