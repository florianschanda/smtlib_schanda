(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.9653391754475517672062778729014098644256591796875p-213 {+ 4347501150831736 -213 (1.49296e-064)}
; Z = 1.2619851506473585001089077195501886308193206787109375p-12 {+ 1179876226832047 -12 (0.000308102)}
; -oo x 1.9653391754475517672062778729014098644256591796875p-213 1.2619851506473585001089077195501886308193206787109375p-12 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b01100101010 #b1111011100100000011101111101110000011000010001111000)))
(assert (= z (fp #b0 #b01111110011 #b0100001100010001011101010111011000010001011010101111)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
