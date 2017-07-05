(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.830926653321987895850497807259671390056610107421875p-973 {+ 3742160966273118 -973 (2.29343e-293)}
; Y = -1.332340860553760553131041888264007866382598876953125p-283 {- 1496730175749906 -283 (-8.57288e-086)}
; 1.830926653321987895850497807259671390056610107421875p-973 / -1.332340860553760553131041888264007866382598876953125p-283 == -1.3742178953822674625229183220653794705867767333984375p-690
; [HW: -1.3742178953822674625229183220653794705867767333984375p-690] 

; mpf : - 1685327574198951 -690
; mpfd: - 1685327574198951 -690 (-2.67521e-208) class: Neg. norm. non-zero
; hwf : - 1685327574198951 -690 (-2.67521e-208) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000110010 #b1101010010110111100110111111000101100100100001011110)))
(assert (= y (fp #b1 #b01011100100 #b0101010100010100010010100110011100110011111100010010)))
(assert (= r (fp #b1 #b00101001101 #b0101111111001100101111100111011000111110101010100111)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
