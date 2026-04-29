(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0609882395817613609523277773405425250530242919921875p702 {+ 274666613054403 702 (2.23238e+211)}
; Y = -1.61311839518812494276289726258255541324615478515625p509 {- 2761239776103236 509 (-2.70355e+153)}
; 1.0609882395817613609523277773405425250530242919921875p702 * -1.61311839518812494276289726258255541324615478515625p509 == -oo
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
(assert (= x (fp #b0 #b11010111101 #b0000111110011100111011001101111001110001101111000011)))
(assert (= y (fp #b1 #b10111111100 #b1001110011110101010100111011111111101000101101000100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
