(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.19271684721599502410072091151960194110870361328125p68 {- 867919521309972 68 (-3.52028e+020)}
; Y = -1.0886835248608337511910804096260108053684234619140625p5 {- 399395089517153 5 (-34.8379)}
; -1.19271684721599502410072091151960194110870361328125p68 > -1.0886835248608337511910804096260108053684234619140625p5 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001000011 #b0011000101010101111001000010110000101110010100010100)))
(assert (= y (fp #b1 #b10000000100 #b0001011010110011111101101010011011111000101001100001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
