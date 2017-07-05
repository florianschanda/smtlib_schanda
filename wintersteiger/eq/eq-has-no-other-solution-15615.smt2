(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5438242803347270726277429275796748697757720947265625p-294 {- 2449166826270505 -294 (-4.85042e-089)}
; Y = 1.603133876640347121877994140959344804286956787109375p-733 {+ 2716273502091990 -733 (3.54799e-221)}
; -1.5438242803347270726277429275796748697757720947265625p-294 = 1.603133876640347121877994140959344804286956787109375p-733 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011011001 #b1000101100111000000100010110101011001110111100101001)))
(assert (= y (fp #b0 #b00100100010 #b1001101001100110111110110101001101000111101011010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
