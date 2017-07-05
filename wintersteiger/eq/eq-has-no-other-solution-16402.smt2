(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.73937950413786523995440802536904811859130859375p-341 {+ 3329869259320672 -341 (3.88299e-103)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.73937950413786523995440802536904811859130859375p-341 = +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010101010 #b1011110101000111111110011010010110011010110101100000)))
(assert (= y (_ +oo 11 53)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
