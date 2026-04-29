(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.299533881530188228481392798130400478839874267578125p128 {+ 1348980677244194 128 (4.42208e+038)}
; Y = -1.65775328523962439675187852117232978343963623046875p-836 {- 2962257450306892 -836 (-3.61779e-252)}
; 1.299533881530188228481392798130400478839874267578125p128 = -1.65775328523962439675187852117232978343963623046875p-836 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111111 #b0100110010101110010000001010000100110111010100100010)))
(assert (= y (fp #b1 #b00010111011 #b1010100001100010100001001111000011110000110101001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
