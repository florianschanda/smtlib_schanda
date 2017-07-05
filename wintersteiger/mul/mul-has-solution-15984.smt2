(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.71985474616313727125316290766932070255279541015625p-864 {- 3241937566581188 -864 (-1.39822e-260)}
; Y = 1.294114610123394459861856375937350094318389892578125p-421 {+ 1324574448555938 -421 (2.38971e-127)}
; -1.71985474616313727125316290766932070255279541015625p-864 * 1.294114610123394459861856375937350094318389892578125p-421 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011111 #b1011100001001000011001101001000010100100000111000100)))
(assert (= y (fp #b0 #b01001011010 #b0100101101001011000110000101011111000001011110100010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
