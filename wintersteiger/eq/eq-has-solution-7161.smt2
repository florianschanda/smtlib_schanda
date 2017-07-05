(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3464228341285122692028153323917649686336517333984375p389 {+ 1560149746693799 389 (1.69766e+117)}
; Y = -1.94555675434193009465388968237675726413726806640625p78 {- 4258409046511972 78 (-5.88008e+023)}
; 1.3464228341285122692028153323917649686336517333984375p389 = -1.94555675434193009465388968237675726413726806640625p78 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110000100 #b0101100010101111001010101011011100101011011010100111)))
(assert (= y (fp #b1 #b10001001101 #b1111001000010000000000011110100001101001000101100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
