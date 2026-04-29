(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.83096499935744194687003982835449278354644775390625p-997 {- 3742333661464100 -997 (-1.36702e-300)}
; Y = 1.425344030220050850488178184605203568935394287109375p773 {+ 1915579216003286 773 (7.08119e+232)}
; Z = -oo {- 0 1024 (-1.#INF)}
; -1.83096499935744194687003982835449278354644775390625p-997 x 1.425344030220050850488178184605203568935394287109375p773 -oo == -oo
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
(assert (= x (fp #b1 #b00000011010 #b1101010010111010000111110100100001011100011000100100)))
(assert (= y (fp #b0 #b11100000100 #b0110110011100011010110001010101101011000000011010110)))
(assert (= z (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
