(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.8759420575115581808489650939009152352809906005859375p895 {+ 3944892323807199 895 (4.95525e+269)}
; Z = -1.784790311405032525726710446178913116455078125p717 {- 3534381354007680 717 (-1.23054e+216)}
; -oo x 1.8759420575115581808489650939009152352809906005859375p895 -1.784790311405032525726710446178913116455078125p717 == -oo
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
(assert (= y (fp #b0 #b11101111110 #b1110000000111101101111010001101000110011111111011111)))
(assert (= z (fp #b1 #b11011001100 #b1100100011101000000001001001000110110011110010000000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
