(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1953321812895694176148708720575086772441864013671875p191 {+ 879697938869171 191 (3.75161e+057)}
; Y = 1.2413878902614623456202025408856570720672607421875p-791 {+ 1087114412633272 -791 (9.53193e-239)}
; 1.1953321812895694176148708720575086772441864013671875p191 % 1.2413878902614623456202025408856570720672607421875p-791 == 1.197573434866040287261057528667151927947998046875p-792
; [HW: 1.197573434866040287261057528667151927947998046875p-792] 

; mpf : + 889791647641008 -792
; mpfd: + 889791647641008 -792 (4.59775e-239) class: Pos. norm. non-zero
; hwf : + 889791647641008 -792 (4.59775e-239) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010111110 #b0011001000000001010010100011001001111110101110110011)))
(assert (= y (fp #b0 #b00011101000 #b0011110111001011100110001100011001010010110010111000)))
(assert (= r (fp #b0 #b00011100111 #x32942c314edb0)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
