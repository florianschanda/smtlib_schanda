(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.306546170677743479160426431917585432529449462890625p-231 {+ 1380561220036138 -231 (3.78613e-070)}
; Y = -1.1119459985926294365299327182583510875701904296875p431 {- 504159957547384 431 (-6.16612e+129)}
; 1.306546170677743479160426431917585432529449462890625p-231 < -1.1119459985926294365299327182583510875701904296875p431 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011000 #b0100111001111001110011110101000111000110011000101010)))
(assert (= y (fp #b1 #b10110101110 #b0001110010101000011111100011001011011111100101111000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
