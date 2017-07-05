(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3029899733974301678784968316904269158840179443359375p-23 {+ 1364545531289663 -23 (1.55329e-007)}
; Y = 1.8394327924534845664084059535525739192962646484375p-139 {+ 3780469211296088 -139 (2.63946e-042)}
; 1.3029899733974301678784968316904269158840179443359375p-23 + 1.8394327924534845664084059535525739192962646484375p-139 == 1.3029899733974301678784968316904269158840179443359375p-23
; [HW: 1.3029899733974301678784968316904269158840179443359375p-23] 

; mpf : + 1364545531289663 -23
; mpfd: + 1364545531289663 -23 (1.55329e-007) class: Pos. norm. non-zero
; hwf : + 1364545531289663 -23 (1.55329e-007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111101000 #b0100110110010000110000000011101011000010000000111111)))
(assert (= y (fp #b0 #b01101110100 #b1101011011100101000100010100011011000111000101011000)))
(assert (= r (fp #b0 #b01111101000 #b0100110110010000110000000011101011000010000000111111)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
