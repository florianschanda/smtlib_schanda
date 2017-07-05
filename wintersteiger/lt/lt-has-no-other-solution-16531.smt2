(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1306182329519403051421022610156796872615814208984375p68 {+ 588252225250151 68 (3.337e+020)}
; Y = -1.3246835392852263080243346848874352872371673583984375p248 {- 1462244666538279 248 (-5.99171e+074)}
; 1.1306182329519403051421022610156796872615814208984375p68 < -1.3246835392852263080243346848874352872371673583984375p248 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001000011 #b0010000101110000001100100100111011001010001101100111)))
(assert (= y (fp #b1 #b10011110111 #b0101001100011110011101011101111011000111100100100111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
