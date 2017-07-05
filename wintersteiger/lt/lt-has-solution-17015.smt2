(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9022403035552939432051289259106852114200592041015625p-256 {- 4063329094890265 -256 (-1.64281e-077)}
; Y = -1.5565029919945307934625589041388593614101409912109375p-415 {- 2506266667377135 -415 (-1.83951e-125)}
; -1.9022403035552939432051289259106852114200592041015625p-256 < -1.5565029919945307934625589041388593614101409912109375p-415 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011111111 #b1110011011111001001110000111010011100111001100011001)))
(assert (= y (fp #b1 #b01001100000 #b1000111001110110111110101110011010111110000111101111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
