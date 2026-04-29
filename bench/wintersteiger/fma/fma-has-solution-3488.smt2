(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9154423909392388480910085490904748439788818359375p-312 {- 4122786010713112 -312 (-2.29568e-094)}
; Y = -1.96277100707420881775533416657708585262298583984375p646 {- 4335935148702524 646 (-5.73122e+194)}
; Z = +oo {+ 0 1024 (1.#INF)}
; -1.9154423909392388480910085490904748439788818359375p-312 x -1.96277100707420881775533416657708585262298583984375p646 +oo == +oo
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
(assert (= x (fp #b1 #b01011000111 #b1110101001011010011011101011101001110100110000011000)))
(assert (= y (fp #b1 #b11010000101 #b1111011001111000001010010010010011101011101100111100)))
(assert (= z (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
