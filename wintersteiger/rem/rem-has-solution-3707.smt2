(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.92956998236291443760137553908862173557281494140625p921 {+ 4186411026184420 921 (3.42048e+277)}
; Y = 1.4677872902573201319142981446930207312107086181640625p-545 {+ 2106726666091521 -545 (1.27443e-164)}
; 1.92956998236291443760137553908862173557281494140625p921 % 1.4677872902573201319142981446930207312107086181640625p-545 == 1.204033691006096251641110939090140163898468017578125p-546
; [HW: 1.204033691006096251641110939090140163898468017578125p-546] 

; mpf : + 918886054786082 -546
; mpfd: + 918886054786082 -546 (5.2271e-165) class: Pos. norm. non-zero
; hwf : + 918886054786082 -546 (5.2271e-165) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011000 #b1110110111111000010011000110000110010111100011100100)))
(assert (= y (fp #b0 #b00111011110 #b0111011111000000111010000110100100100011110000000001)))
(assert (= r (fp #b0 #b00111011101 #x343b8d4e27422)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
