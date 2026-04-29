(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5756474554486230577055039248079992830753326416015625p-721 {+ 2592485665855193 -721 (1.42834e-217)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.5756474554486230577055039248079992830753326416015625p-721 = +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100101110 #b1001001101011101101000011011001100101101011011011001)))
(assert (= y (_ +oo 11 53)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
