(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9733672558657422424488459000713191926479339599609375p626 {- 4383656410811599 626 (-5.49522e+188)}
; Y = 1.6866631695390077450014132409705780446529388427734375p891 {+ 3092455994464919 891 (2.78455e+268)}
; -1.9733672558657422424488459000713191926479339599609375p626 * 1.6866631695390077450014132409705780446529388427734375p891 == -oo
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
(assert (= x (fp #b1 #b11001110001 #b1111100100101110100110001011001011110000110011001111)))
(assert (= y (fp #b0 #b11101111010 #b1010111111001001001010000101000010001001101010010111)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
