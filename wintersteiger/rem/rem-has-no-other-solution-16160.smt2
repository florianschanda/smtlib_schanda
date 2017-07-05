(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2090701569896531442083187357638962566852569580078125p777 {+ 941568281112893 777 (9.61077e+233)}
; Y = 1.509150285327459872775079929851926863193511962890625p-469 {+ 2293009035276330 -469 (9.90067e-142)}
; 1.2090701569896531442083187357638962566852569580078125p777 % 1.509150285327459872775079929851926863193511962890625p-469 == 1.373357887018778367149707264616154134273529052734375p-469
; [HW: 1.373357887018778367149707264616154134273529052734375p-469] 

; mpf : + 1681454440853606 -469
; mpfd: + 1681454440853606 -469 (9.00981e-142) class: Pos. norm. non-zero
; hwf : + 1681454440853606 -469 (9.00981e-142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100001000 #b0011010110000101100111110010111011010111000100111101)))
(assert (= y (fp #b0 #b01000101010 #b1000001001010111101011000101000000111011000000101010)))
(assert (= r (fp #b1 #b01000100111 #x161a532e3fe20)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
