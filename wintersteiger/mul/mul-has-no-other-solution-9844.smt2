(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.532945554585238401301694466383196413516998291015625p761 {- 2400173401038842 761 (-1.85932e+229)}
; Y = 1.0492186273992707423730053051258437335491180419921875p642 {+ 221660992015043 642 (1.9148e+193)}
; -1.532945554585238401301694466383196413516998291015625p761 * 1.0492186273992707423730053051258437335491180419921875p642 == -oo
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
(assert (= x (fp #b1 #b11011111000 #b1000100001101111000111101010111101111101111111111010)))
(assert (= y (fp #b0 #b11010000001 #b0000110010011001100101111000101100001000101011000011)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
