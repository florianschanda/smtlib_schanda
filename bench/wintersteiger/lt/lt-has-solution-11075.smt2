(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.498312830229073799870320726768113672733306884765625p-122 {- 2244201476533594 -122 (-2.81801e-037)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.498312830229073799870320726768113672733306884765625p-122 < -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110000101 #b0111111110010001011011011111110100000010110101011010)))
(assert (= y (_ -oo 11 53)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
