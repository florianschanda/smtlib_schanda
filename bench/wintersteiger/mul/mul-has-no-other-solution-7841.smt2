(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.512934778214104714066934320726431906223297119140625p885 {+ 2310052876030410 885 (3.90271e+266)}
; Y = 1.7074581868113030136413499349146150052547454833984375p673 {+ 3186108426503591 673 (6.69171e+202)}
; 1.512934778214104714066934320726431906223297119140625p885 * 1.7074581868113030136413499349146150052547454833984375p673 == +oo
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
(assert (= x (fp #b0 #b11101110100 #b1000001101001111101100011001000101101001000111001010)))
(assert (= y (fp #b0 #b11010100000 #b1011010100011011111110101100111110100100010110100111)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
