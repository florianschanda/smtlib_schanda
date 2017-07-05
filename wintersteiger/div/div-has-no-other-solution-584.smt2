(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.17910505198305859408947071642614901065826416015625p836 {+ 806617445371076 836 (5.40292e+251)}
; Y = -1.43583247960621118721746825031004846096038818359375p-653 {- 1962814992750492 -653 (-3.84164e-197)}
; 1.17910505198305859408947071642614901065826416015625p836 / -1.43583247960621118721746825031004846096038818359375p-653 == -oo
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
(assert (= x (fp #b0 #b11101000011 #b0010110111011001110101000010010011010000110011000100)))
(assert (= y (fp #b1 #b00101110010 #b0110111110010010101101111010011001110001011110011100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
