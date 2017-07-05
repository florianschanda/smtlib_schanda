(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7049787611611659787769212925923056900501251220703125p-494 {+ 3174942086069541 -494 (3.33351e-149)}
; Y = -1.4401389364569414652805789955891668796539306640625p32 {- 1982209550218728 32 (-6.18535e+009)}
; 1.7049787611611659787769212925923056900501251220703125p-494 + -1.4401389364569414652805789955891668796539306640625p32 == -1.4401389364569414652805789955891668796539306640625p32
; [HW: -1.4401389364569414652805789955891668796539306640625p32] 

; mpf : - 1982209550218728 32
; mpfd: - 1982209550218728 32 (-6.18535e+009) class: Neg. norm. non-zero
; hwf : - 1982209550218728 32 (-6.18535e+009) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010001 #b1011010001111001011111001111001110001111110100100101)))
(assert (= y (fp #b1 #b10000011111 #b0111000010101100111100100000000111000111010111101000)))
(assert (= r (fp #b1 #b10000011111 #b0111000010101100111100100000000111000111010111101000)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
