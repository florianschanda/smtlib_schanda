(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7278157799476867584331785110407508909702301025390625p229 {- 3277790875366769 229 (-1.49062e+069)}
; Y = 1.5972030044396607895151873890426941215991973876953125p-237 {+ 2689563228258997 -237 (7.23188e-072)}
; -1.7278157799476867584331785110407508909702301025390625p229 > 1.5972030044396607895151873890426941215991973876953125p-237 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011100100 #b1011101001010010001000101000110001100011010101110001)))
(assert (= y (fp #b0 #b01100010010 #b1001100011100010010010111100110100100100001010110101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
