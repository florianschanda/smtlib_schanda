(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.055165625041424970476100497762672603130340576171875p298 {- 248443888380222 298 (-5.37353e+089)}
; Y = 1.8914569596802726092477087149745784699916839599609375p888 {+ 4014765231432911 888 (3.90331e+267)}
; Z = 1.3297712412169513385151731199584901332855224609375p749 {+ 1485157639062168 749 (3.93771e+225)}
; -1.055165625041424970476100497762672603130340576171875p298 x 1.8914569596802726092477087149745784699916839599609375p888 1.3297712412169513385151731199584901332855224609375p749 == -oo
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
(assert (= x (fp #b1 #b10100101001 #b0000111000011111010101011001101101101010100100111110)))
(assert (= y (fp #b0 #b11101110111 #b1110010000110110100001011111011110011110010011001111)))
(assert (= z (fp #b0 #b11011101100 #b0101010001101011111000110101100000110000001010011000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
