(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0228899741447550209016981170861981809139251708984375p-562 {+ 103087279028839 -562 (6.77597e-170)}
; Y = 1.0111502858447176667056055521243251860141754150390625p-333 {+ 50216423175345 -333 (5.77866e-101)}
; 1.0228899741447550209016981170861981809139251708984375p-562 < 1.0111502858447176667056055521243251860141754150390625p-333 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111001101 #b0000010111011100000111100000101001011011101001100111)))
(assert (= y (fp #b0 #b01010110010 #b0000001011011010101111101100000100001011010010110001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
