(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2001821171512918606794073639321140944957733154296875p807 {+ 901540108208795 807 (1.02436e+243)}
; Y = 1.043435284004704310945044198888354003429412841796875p-940 {+ 195615128858318 -940 (1.12272e-283)}
; 1.2001821171512918606794073639321140944957733154296875p807 < 1.043435284004704310945044198888354003429412841796875p-940 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100100110 #b0011001100111111001000101001111001101000101010011011)))
(assert (= y (fp #b0 #b00001010011 #b0000101100011110100100110010010001001010111011001110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
