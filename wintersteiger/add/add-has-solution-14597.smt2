(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3984552509856553736966588985524140298366546630859375p-1010 {+ 1794482919862815 -1010 (1.27454e-304)}
; Y = 1.4697554398938219577530617243610322475433349609375p-712 {+ 2115590424061080 -712 (6.82163e-215)}
; 1.3984552509856553736966588985524140298366546630859375p-1010 + 1.4697554398938219577530617243610322475433349609375p-712 == 1.4697554398938219577530617243610322475433349609375p-712
; [HW: 1.4697554398938219577530617243610322475433349609375p-712] 

; mpf : + 2115590424061080 -712
; mpfd: + 2115590424061080 -712 (6.82163e-215) class: Pos. norm. non-zero
; hwf : + 2115590424061080 -712 (6.82163e-215) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000001101 #b0110011000000001001010011100111111100111001000011111)))
(assert (= y (fp #b0 #b00100110111 #b0111100001000001111001000111101101110110010010011000)))
(assert (= r (fp #b0 #b00100110111 #b0111100001000001111001000111101101110110010010011000)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
