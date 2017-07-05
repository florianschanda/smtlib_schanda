(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.331529097899982527763995676650665700435638427734375p617 {- 1493074321764838 617 (-7.24199e+185)}
; Y = 1.724070195603702781994570614187978208065032958984375p541 {+ 3260922263110918 541 (1.24103e+163)}
; -1.331529097899982527763995676650665700435638427734375p617 * 1.724070195603702781994570614187978208065032958984375p541 == -oo
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
(assert (= x (fp #b1 #b11001101000 #b0101010011011111000101110100100100100111000111100110)))
(assert (= y (fp #b0 #b11000011100 #b1011100101011100101010100001001000100000010100000110)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
