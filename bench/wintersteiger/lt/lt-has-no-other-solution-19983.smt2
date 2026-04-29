(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2200616978091531894534682578523643314838409423828125p-746 {- 991069780251821 -746 (-3.29614e-225)}
; Y = 1.638694655146952783297820133157074451446533203125p662 {+ 2876425010923344 662 (3.13585e+199)}
; -1.2200616978091531894534682578523643314838409423828125p-746 < 1.638694655146952783297820133157074451446533203125p662 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100010101 #b0011100001010101111101101010001100110001010010101101)))
(assert (= y (fp #b0 #b11010010101 #b1010001110000001011111100010111111111100011101010000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
