(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3295702089873076001680374247371219098567962646484375p-155 {- 1484252270387655 -155 (-2.91113e-047)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.3295702089873076001680374247371219098567962646484375p-155 - -oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101100100 #b0101010001011110101101101001010101010110000111000111)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
