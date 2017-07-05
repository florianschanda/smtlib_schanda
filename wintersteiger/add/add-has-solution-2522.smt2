(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4667010195310685727321242666221223771572113037109375p28 {+ 2101834537653551 28 (3.93715e+008)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.4667010195310685727321242666221223771572113037109375p28 + -oo == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011011 #b0111011101111001101101111100111111100101010100101111)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
