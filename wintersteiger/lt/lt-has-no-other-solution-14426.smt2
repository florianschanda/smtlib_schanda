(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9816664202176397235888316572527401149272918701171875p-790 {- 4421032524294291 -790 (-3.04322e-238)}
; Y = +zero {+ 0 -1023 (0)}
; -1.9816664202176397235888316572527401149272918701171875p-790 < +zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011101001 #b1111101101001110011111011001001001101010100010010011)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
