(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.105940560287276941409118080628104507923126220703125p392 {- 477113867833202 392 (-1.11555e+118)}
; Y = -1.517541627824019467851712761330418288707733154296875p-384 {- 2330800282216974 -384 (-3.85143e-116)}
; -1.105940560287276941409118080628104507923126220703125p392 > -1.517541627824019467851712761330418288707733154296875p-384 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110000111 #b0001101100011110111010111010100111000000111101110010)))
(assert (= y (fp #b1 #b01001111111 #b1000010001111101100110111010110111010010101000001110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
