(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9070909354511906830254019951098598539829254150390625p24 {- 4085174398889137 24 (-3.19957e+007)}
; Y = 1.46371349158803010226392871118150651454925537109375p-859 {+ 2088379907922524 -859 (3.80794e-259)}
; -1.9070909354511906830254019951098598539829254150390625p24 = 1.46371349158803010226392871118150651454925537109375p-859 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000010111 #b1110100000110111000111001000111001000010110010110001)))
(assert (= y (fp #b0 #b00010100100 #b0111011010110101111011010110100100010101101001011100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
