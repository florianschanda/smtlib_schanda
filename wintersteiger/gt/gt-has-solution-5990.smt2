(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3959619683035142667648642600397579371929168701171875p232 {+ 1783254172904595 232 (9.63458e+069)}
; Y = -1.931411153011214576480369942146353423595428466796875p-830 {- 4194702921630030 -830 (-2.6976e-250)}
; 1.3959619683035142667648642600397579371929168701171875p232 > -1.931411153011214576480369942146353423595428466796875p-830 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011100111 #b0110010101011101110000110111100001010010110010010011)))
(assert (= y (fp #b1 #b00011000001 #b1110111001110000111101100001100101010000000101001110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
