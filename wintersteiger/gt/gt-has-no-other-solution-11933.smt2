(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4796562747852244346091765692108310759067535400390625p-352 {+ 2160179820388657 -352 (1.61288e-106)}
; Y = 1.84753376168695293557675540796481072902679443359375p767 {+ 3816952733317276 767 (1.43416e+231)}
; 1.4796562747852244346091765692108310759067535400390625p-352 > 1.84753376168695293557675540796481072902679443359375p767 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010011111 #b0111101011001010110000001110110110000110000100110001)))
(assert (= y (fp #b0 #b11011111110 #b1101100011110111111110001111110010110011100010011100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
