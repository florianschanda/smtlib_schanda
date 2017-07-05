(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.634387428338176295739003762719221413135528564453125p995 {+ 2857026985872338 995 (5.47269e+299)}
; Y = 1.395999013374332964332324991119094192981719970703125p-879 {+ 1783421009071730 -879 (3.46353e-265)}
; 1.634387428338176295739003762719221413135528564453125p995 / 1.395999013374332964332324991119094192981719970703125p-879 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111100010 #b1010001001100111001101101110100110110100101111010010)))
(assert (= y (fp #b0 #b00010010000 #b0110010101100000001100001111101110110000111001110010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
