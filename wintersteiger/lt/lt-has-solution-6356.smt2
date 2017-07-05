(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5997428524849268693941439778427593410015106201171875p865 {+ 2701001686969235 865 (3.93547e+260)}
; Y = 1.829801098921511215422697205212898552417755126953125p170 {+ 3737091919894546 170 (2.73844e+051)}
; 1.5997428524849268693941439778427593410015106201171875p865 < 1.829801098921511215422697205212898552417755126953125p170 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101100000 #b1001100110001000101111110110000101101110101110010011)))
(assert (= y (fp #b0 #b10010101001 #b1101010001101101110110000100011000001101100000010010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
