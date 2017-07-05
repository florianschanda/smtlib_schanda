(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.35015456190443483563967674854211509227752685546875p-944 {+ 1576955954514892 -944 (9.07962e-285)}
; 1.35015456190443483563967674854211509227752685546875p-944 S == 1.1619615148121018588511788038886152207851409912109375p-472
; [HW: 1.1619615148121018588511788038886152207851409912109375p-472] 

; mpf : + 729409817756143 -472
; mpfd: + 729409817756143 -472 (9.5287e-143) class: Pos. norm. non-zero
; hwf : + 729409817756143 -472 (9.5287e-143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001001111 #b0101100110100011101110101011011111101100101111001100)))
(assert (= r (fp #b0 #b01000100111 #b0010100101110110010011110101000101010100000111101111)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
