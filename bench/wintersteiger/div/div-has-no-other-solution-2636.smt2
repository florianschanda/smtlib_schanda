(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5168955329004949472704311119741760194301605224609375p822 {+ 2327890529360143 822 (4.2424e+247)}
; Y = -1.700990079740090532567364789429120719432830810546875p-297 {- 3156978661907886 -297 (-6.68026e-090)}
; 1.5168955329004949472704311119741760194301605224609375p822 / -1.700990079740090532567364789429120719432830810546875p-297 == -oo
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
(assert (= x (fp #b0 #b11100110101 #b1000010001010011010001000000000101000001100100001111)))
(assert (= y (fp #b1 #b01011010110 #b1011001101110100000101011111101101001101110110101110)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
