(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9459836888021102563328668111353181302547454833984375p-477 {- 4260331788387751 -477 (-4.98691e-144)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.9459836888021102563328668111353181302547454833984375p-477 m +oo == -1.9459836888021102563328668111353181302547454833984375p-477
; [HW: -1.9459836888021102563328668111353181302547454833984375p-477] 

; mpf : - 4260331788387751 -477
; mpfd: - 4260331788387751 -477 (-4.98691e-144) class: Neg. norm. non-zero
; hwf : - 4260331788387751 -477 (-4.98691e-144) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000100010 #b1111001000101011111111001010110111110100010110100111)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b01000100010 #b1111001000101011111111001010110111110100010110100111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
