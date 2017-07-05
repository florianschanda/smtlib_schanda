(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1713262068634697765645569234038703143596649169921875p-911 {- 771584641389123 -911 (-6.76631e-275)}
; Y = +oo {+ 0 1024 (1.#INF)}
; Z = -1.1806742944226835678733777967863716185092926025390625p277 {- 813684685037425 277 (-2.86707e+083)}
; -1.1713262068634697765645569234038703143596649169921875p-911 x +oo -1.1806742944226835678733777967863716185092926025390625p277 == -oo
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
(assert (= x (fp #b1 #b00001110000 #b0010101111011100000010001100011101101101001001000011)))
(assert (= y (_ +oo 11 53)))
(assert (= z (fp #b1 #b10100010100 #b0010111001000000101010111010100111000101111101110001)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
