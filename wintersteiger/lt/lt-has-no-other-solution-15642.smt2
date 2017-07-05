(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.093565857912140781849075210629962384700775146484375p-161 {- 421383162827718 -161 (-3.74124e-049)}
; Y = -1.9456623146845590799358660660800524055957794189453125p275 {- 4258884448031701 275 (-1.18118e+083)}
; -1.093565857912140781849075210629962384700775146484375p-161 < -1.9456623146845590799358660660800524055957794189453125p275 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101011110 #b0001011111110011111011101001101111000001001111000110)))
(assert (= y (fp #b1 #b10100010010 #b1111001000010110111011001110101010100001001111010101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
