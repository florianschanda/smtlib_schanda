(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.914078463753621672793769903364591300487518310546875p184 {- 4116643428748206 184 (-4.69331e+055)}
; Y = -1.8586168651574528354331050650216639041900634765625p91 {- 3866866593977128 91 (-4.60171e+027)}
; -1.914078463753621672793769903364591300487518310546875p184 > -1.8586168651574528354331050650216639041900634765625p91 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010110111 #b1110101000000001000010111101001111001100101110101110)))
(assert (= y (fp #b1 #b10001011010 #b1101101111001110010100001001101110100101001100101000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
