(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.36935196961166116835784123395569622516632080078125p-140 {+ 1663413392711636 -140 (9.82462e-043)}
; Z = -1.464017132703492318768212498980574309825897216796875p-168 {- 2089747385936974 -168 (-3.91297e-051)}
; -oo x 1.36935196961166116835784123395569622516632080078125p-140 -1.464017132703492318768212498980574309825897216796875p-168 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b01101110011 #b0101111010001101110110011100011000110001111111010100)))
(assert (= z (fp #b1 #b01101010111 #b0111011011001001110100111010100110111110110001001110)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
