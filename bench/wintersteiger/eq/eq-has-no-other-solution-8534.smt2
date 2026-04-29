(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2057066444859969589487036500941030681133270263671875p-376 {- 926420367454771 -376 (-7.83363e-114)}
; Y = -1.9242812831189384237262629540055058896541595458984375p838 {- 4162592842239975 838 (-3.527e+252)}
; -1.2057066444859969589487036500941030681133270263671875p-376 = -1.9242812831189384237262629540055058896541595458984375p838 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010000111 #b0011010010101001001100001100111010100011001000110011)))
(assert (= y (fp #b1 #b11101000101 #b1110110010011101101100101011101101001100111111100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
