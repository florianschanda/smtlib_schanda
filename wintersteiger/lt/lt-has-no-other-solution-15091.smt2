(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.507605477253139536486514771240763366222381591796875p-966 {- 2286051838208462 -966 (-2.4172e-291)}
; Y = 1.2662225394878452444658023523516021668910980224609375p-435 {+ 1198959729635087 -435 (1.42712e-131)}
; -1.507605477253139536486514771240763366222381591796875p-966 < 1.2662225394878452444658023523516021668910980224609375p-435 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000111001 #b1000000111110010011011101011110000010010100111001110)))
(assert (= y (fp #b0 #b01001001100 #b0100010000100111001010010000110010001110111100001111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
