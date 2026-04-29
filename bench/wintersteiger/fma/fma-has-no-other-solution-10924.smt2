(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.2942883415008961112135921212029643356800079345703125p344 {+ 1325356865122917 344 (4.6382e+103)}
; Z = 1.094584516738146273695519994362257421016693115234375p619 {+ 425970794336934 619 (2.38131e+186)}
; -oo x 1.2942883415008961112135921212029643356800079345703125p344 1.094584516738146273695519994362257421016693115234375p619 == -oo
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
(assert (= y (fp #b0 #b10101010111 #b0100101101010110011110110001001001010111001001100101)))
(assert (= z (fp #b0 #b11001101010 #b0001100000110110101100001101111000011001001010100110)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
