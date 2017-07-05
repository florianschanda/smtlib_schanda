(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1498513371876228905676953218062408268451690673828125p550 {+ 674870426319149 550 (4.23779e+165)}
; Y = -1.835641846610776450887669852818362414836883544921875p-728 {- 3763396309011486 -728 (-1.30002e-219)}
; 1.1498513371876228905676953218062408268451690673828125p550 = -1.835641846610776450887669852818362414836883544921875p-728 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000100101 #b0010011001011100101010000100000001111011100100101101)))
(assert (= y (fp #b1 #b00100100111 #b1101010111101100100111111100001001011100110000011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
