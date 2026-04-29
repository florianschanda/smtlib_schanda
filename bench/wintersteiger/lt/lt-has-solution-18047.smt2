(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8771638985065675075958324669045396149158477783203125p-160 {- 3950395006457029 -160 (-1.28441e-048)}
; Y = 1.055325185480473937360557101783342659473419189453125p-66 {+ 249162484714066 -66 (1.43023e-020)}
; -1.8771638985065675075958324669045396149158477783203125p-160 < 1.055325185480473937360557101783342659473419189453125p-66 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101011111 #b1110000010001101110100000011000101010001010011000101)))
(assert (= y (fp #b0 #b01110111101 #b0000111000101001110010101001011001001000101001010010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
