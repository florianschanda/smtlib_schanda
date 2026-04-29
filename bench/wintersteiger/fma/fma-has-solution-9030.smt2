(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.6484938184064146238227976937196217477321624755859375p-29 {- 2920556518927199 -29 (-3.07056e-009)}
; Z = -1.900691995305939574478770737187005579471588134765625p573 {- 4056356134435418 573 (-5.87624e+172)}
; -oo x -1.6484938184064146238227976937196217477321624755859375p-29 -1.900691995305939574478770737187005579471588134765625p573 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b01111100010 #b1010011000000011101100001101110110110110101101011111)))
(assert (= z (fp #b1 #b11000111100 #b1110011010010011110000000010011110011011101001011010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
