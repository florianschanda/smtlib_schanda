(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.294384416613323818268099785200320184230804443359375p-443 {- 1325789548963446 -443 (-5.69869e-134)}
; Y = 1.2390211077942989703615239704959094524383544921875p610 {+ 1076455371996088 610 (5.26473e+183)}
; Z = 1.0346896045020093080069045754498802125453948974609375p940 {+ 156228089908879 940 (9.61626e+282)}
; -1.294384416613323818268099785200320184230804443359375p-443 x 1.2390211077942989703615239704959094524383544921875p610 1.0346896045020093080069045754498802125453948974609375p940 == 1.0346896045020093080069045754498802125453948974609375p940
; [HW: 1.0346896045020093080069045754498802125453948974609375p940] 

; mpf : + 156228089908879 940
; mpfd: + 156228089908879 940 (9.61626e+282) class: Pos. norm. non-zero
; hwf : + 156228089908879 940 (9.61626e+282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001000100 #b0100101101011100110001101111000111001110011001110110)))
(assert (= y (fp #b0 #b11001100001 #b0011110100110000011111001100000100000111101110111000)))
(assert (= z (fp #b0 #b11110101011 #b0000100011100001011010101111110011011000111010001111)))
(assert (= r (fp #b0 #b11110101011 #b0000100011100001011010101111110011011000111010001111)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
