(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.154474886998505755997257438139058649539947509765625p-598 {+ 695693043524570 -598 (1.11288e-180)}
; Y = -1.1630946993355142371484589602914638817310333251953125p-65 {- 734513227153525 -65 (-3.15257e-020)}
; 1.154474886998505755997257438139058649539947509765625p-598 = -1.1630946993355142371484589602914638817310333251953125p-65 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110101001 #b0010011110001011101010101000101110110110001111011010)))
(assert (= y (fp #b1 #b01110111110 #b0010100111000000100100101111111111001100000001110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
