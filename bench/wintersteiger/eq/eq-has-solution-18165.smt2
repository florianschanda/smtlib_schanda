(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9265040145557901229977915136259980499744415283203125p16 {+ 4172603134710725 16 (126255)}
; Y = 1.0300479375198678955172226778813637793064117431640625p159 {+ 135323880217729 159 (7.52708e+047)}
; 1.9265040145557901229977915136259980499744415283203125p16 = 1.0300479375198678955172226778813637793064117431640625p159 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000001111 #b1110110100101111010111011111101000100001001111000101)))
(assert (= y (fp #b0 #b10010011110 #b0000011110110001001110001011110011110101110010000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
