(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4041545662271557315392556120059452950954437255859375p665 {- 1820150353860703 665 (-2.14962e+200)}
; Y = -1.9100479314439302580552748622721992433071136474609375p478 {- 4098491524940175 478 (-1.49067e+144)}
; -1.4041545662271557315392556120059452950954437255859375p665 > -1.9100479314439302580552748622721992433071136474609375p478 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010011000 #b0110011101110110101011000111010001111001100001011111)))
(assert (= y (fp #b1 #b10111011101 #b1110100011111000111001101011011101011000000110001111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
