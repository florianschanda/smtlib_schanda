(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.7166417978092327611960854483186267316341400146484375p-44 {+ 3227467733571783 -44 (9.75798e-014)}
; -oo M 1.7166417978092327611960854483186267316341400146484375p-44 == 1.7166417978092327611960854483186267316341400146484375p-44
; [HW: 1.7166417978092327611960854483186267316341400146484375p-44] 

; mpf : + 3227467733571783 -44
; mpfd: + 3227467733571783 -44 (9.75798e-014) class: Pos. norm. non-zero
; hwf : + 3227467733571783 -44 (9.75798e-014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b01111010011 #b1011011101110101110101100011110010001001100011000111)))
(assert (= r (fp #b0 #b01111010011 #b1011011101110101110101100011110010001001100011000111)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
