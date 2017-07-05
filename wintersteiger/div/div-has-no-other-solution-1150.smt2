(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0588738344886590159177330860984511673450469970703125p739 {- 265144179064997 739 (-3.06204e+222)}
; Y = 1.7767329347173987930119665179518051445484161376953125p-580 {+ 3498094155359669 -580 (4.48978e-175)}
; -1.0588738344886590159177330860984511673450469970703125p739 / 1.7767329347173987930119665179518051445484161376953125p-580 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011100010 #b0000111100010010010110110000100110111000000010100101)))
(assert (= y (fp #b0 #b00110111011 #b1100011011010111111110000011100001010110010110110101)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
