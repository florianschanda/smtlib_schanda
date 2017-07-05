(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8601384463920058731645212901639752089977264404296875p915 {+ 3873719186658075 915 (5.15218e+275)}
; Y = -1.9745591330915808203627648254041559994220733642578125p520 {- 4389024148641757 520 (-6.77747e+156)}
; Z = 1.3094753761543664882793791548465378582477569580078125p656 {+ 1393753188729149 656 (3.91539e+197)}
; 1.8601384463920058731645212901639752089977264404296875p915 x -1.9745591330915808203627648254041559994220733642578125p520 1.3094753761543664882793791548465378582477569580078125p656 == -oo
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
(assert (= x (fp #b0 #b11110010010 #b1101110000110010000010001000000101001001001100011011)))
(assert (= y (fp #b1 #b11000000111 #b1111100101111100101101010001010010100101011111011101)))
(assert (= z (fp #b0 #b11010001111 #b0100111100111001110001110011101110000000000100111101)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
