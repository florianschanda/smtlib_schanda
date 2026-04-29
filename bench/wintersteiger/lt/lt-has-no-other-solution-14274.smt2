(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4042609860812402811092169940820895135402679443359375p-920 {+ 1820629626275903 -920 (1.58435e-277)}
; Y = -1.7971264395996684459788639287580735981464385986328125p64 {- 3589938336348237 64 (-3.31511e+019)}
; 1.4042609860812402811092169940820895135402679443359375p-920 < -1.7971264395996684459788639287580735981464385986328125p64 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001100111 #b0110011101111101101001011110001001000100100000111111)))
(assert (= y (fp #b1 #b10000111111 #b1100110000010000011110100111010011011011100001001101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
