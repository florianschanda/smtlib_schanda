(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.326834665626329456955545538221485912799835205078125p859 {+ 1471932478326498 859 (5.10015e+258)}
; Y = 1.2207348060155085445188660742132924497127532958984375p557 {+ 994101190119143 557 (5.75876e+167)}
; 1.326834665626329456955545538221485912799835205078125p859 * 1.2207348060155085445188660742132924497127532958984375p557 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101011010 #b0101001110101011011011111100100000010000011011100010)))
(assert (= y (fp #b0 #b11000101100 #b0011100010000010000100111000010011101100111011100111)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
