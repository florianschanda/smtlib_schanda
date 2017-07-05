(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.549850885024567137548956452519632875919342041015625p-603 {+ 2476308240905978 -603 (4.66877e-182)}
; Y = 1.6284392498150872530260357962106354534626007080078125p-160 {+ 2830238771292221 -160 (1.11422e-048)}
; 1.549850885024567137548956452519632875919342041015625p-603 < 1.6284392498150872530260357962106354534626007080078125p-160 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110100100 #b1000110011000011000001110001000011011011011011111010)))
(assert (= y (fp #b0 #b01101011111 #b1010000011100001011001010000100101111010100000111101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
