(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.92387069021733481122282682918012142181396484375p-374 {- 4160743696201312 -374 (-4.99986e-113)}
; -oo = -1.92387069021733481122282682918012142181396484375p-374 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b01010001001 #b1110110010000010110010100010000000110111011001100000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
