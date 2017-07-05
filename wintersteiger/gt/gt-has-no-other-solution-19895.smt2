(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -0.8768536274665092999924809191725216805934906005859375p-1022 {- 3948997669916639 -1023 (-1.95106e-308)}
; Y = 1.6454088283019563387910011442727409303188323974609375p517 {+ 2906662958642319 517 (7.05962e+155)}
; -0.8768536274665092999924809191725216805934906005859375p-1022 > 1.6454088283019563387910011442727409303188323974609375p517 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b1110000001111001011110101011010101011000111111011111)))
(assert (= y (fp #b0 #b11000000100 #b1010010100111001100000110101001000011011010010001111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
