(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.910020715494988419180799610330723226070404052734375p320 {+ 4098368955202662 320 (4.07978e+096)}
; Y = 1.8318484783683930405828732546069659292697906494140625p-822 {+ 3746312497208609 -822 (6.54988e-248)}
; 1.910020715494988419180799610330723226070404052734375p320 = 1.8318484783683930405828732546069659292697906494140625p-822 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100111111 #b1110100011110111000111100001101110111011110001100110)))
(assert (= y (fp #b0 #b00011001001 #b1101010011110100000001011001100111010001110100100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
