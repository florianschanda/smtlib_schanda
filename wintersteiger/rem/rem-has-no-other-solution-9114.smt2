(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1496596217419725594055535111692734062671661376953125p540 {+ 674007016709557 540 (4.13778e+162)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.1496596217419725594055535111692734062671661376953125p540 % +oo == 1.1496596217419725594055535111692734062671661376953125p540
; [HW: 1.1496596217419725594055535111692734062671661376953125p540] 

; mpf : + 674007016709557 540
; mpfd: + 674007016709557 540 (4.13778e+162) class: Pos. norm. non-zero
; hwf : + 674007016709557 540 (4.13778e+162) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011011 #b0010011001010000000101111100110011101001110110110101)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b0 #b11000011011 #x265017cce9db5)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
