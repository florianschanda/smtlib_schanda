(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2387307376917549017747433026670478284358978271484375p866 {+ 1075147661310471 866 (6.09471e+260)}
; Y = -1.5722615443386136480086179290083236992359161376953125p977 {- 2577236877841845 977 (-2.00831e+294)}
; 1.2387307376917549017747433026670478284358978271484375p866 * -1.5722615443386136480086179290083236992359161376953125p977 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100001 #b0011110100011101011101010010011011101111101000000111)))
(assert (= y (fp #b1 #b11111010000 #b1001001001111111101110111000100110110001010110110101)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
