(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.30022376006551354521434404887259006500244140625p-333 {+ 1352087613958816 -333 (7.4307e-101)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.30022376006551354521434404887259006500244140625p-333 + +oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010110010 #b0100110011011011011101101101111011110110101010100000)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
