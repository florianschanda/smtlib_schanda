(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2763000707879237349828827063902281224727630615234375p96 {- 1244344895842935 96 (-1.01119e+029)}
; Y = 1.004323195449512429178184902411885559558868408203125p712 {+ 19469941415474 712 (2.16387e+214)}
; -1.2763000707879237349828827063902281224727630615234375p96 > 1.004323195449512429178184902411885559558868408203125p712 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001011111 #b0100011010111011100110011111011111101010101001110111)))
(assert (= y (fp #b0 #b11011000111 #b0000000100011011010100110010111100010001111000110010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
