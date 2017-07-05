(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3217727766924642907042652950622141361236572265625p959 {+ 1449135757210152 959 (6.44055e+288)}
; Y = 1.2070892648837066030154119289363734424114227294921875p-252 {+ 932647136162691 -252 (1.66794e-076)}
; 1.3217727766924642907042652950622141361236572265625p959 < 1.2070892648837066030154119289363734424114227294921875p-252 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110111110 #b0101001001011111101100110110000010100011001000101000)))
(assert (= y (fp #b0 #b01100000011 #b0011010100000011110011010101010000000111001110000011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
