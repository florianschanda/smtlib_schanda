(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.964972965582261199557478903443552553653717041015625p721 {+ 4345851888218874 721 (2.16762e+217)}
; Y = -1.061520722575119091146689243032597005367279052734375p116 {- 277064703264870 116 (-8.81877e+034)}
; 1.964972965582261199557478903443552553653717041015625p721 = -1.061520722575119091146689243032597005367279052734375p116 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011010000 #b1111011100001000011101111110000010110011001011111010)))
(assert (= y (fp #b1 #b10001110011 #b0000111110111111110100100111001101111100100001100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
