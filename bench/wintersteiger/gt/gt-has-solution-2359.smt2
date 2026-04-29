(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.290493198694609322529913697508163750171661376953125p-247 {+ 1308265061394706 -247 (5.7062e-075)}
; Y = 1.056697639517859332869420541101135313510894775390625p-875 {+ 255343468205418 -875 (4.19474e-264)}
; 1.290493198694609322529913697508163750171661376953125p-247 > 1.056697639517859332869420541101135313510894775390625p-875 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100001000 #b0100101001011101110000110010010000011010100100010010)))
(assert (= y (fp #b0 #b00010010100 #b0000111010000011101111001000101101111101010101101010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
