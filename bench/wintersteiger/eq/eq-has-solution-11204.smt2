(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5135872296169872175397586033795960247516632080078125p321 {- 2312991255925309 321 (-6.46601e+096)}
; Y = 1.153134669302774195642768972902558743953704833984375p-304 {+ 689657239609478 -304 (3.53803e-092)}
; -1.5135872296169872175397586033795960247516632080078125p321 = 1.153134669302774195642768972902558743953704833984375p-304 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101000000 #b1000001101111010011100111110001011011001001000111101)))
(assert (= y (fp #b0 #b01011001111 #b0010011100110011110101010110110010001010000010000110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
