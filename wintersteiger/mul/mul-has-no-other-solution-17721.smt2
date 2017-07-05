(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.754269236055550518216250566183589398860931396484375p283 {+ 3396926650436806 283 (2.72637e+085)}
; Y = -1.363715071120254140879524129559285938739776611328125p53 {- 1638027058766210 53 (-1.22833e+016)}
; 1.754269236055550518216250566183589398860931396484375p283 * -1.363715071120254140879524129559285938739776611328125p53 == -1.1961616980057845349705303306109271943569183349609375p337
; [HW: -1.1961616980057845349705303306109271943569183349609375p337] 

; mpf : - 883433750043215 337
; mpfd: - 883433750043215 337 (-3.34887e+101) class: Neg. norm. non-zero
; hwf : - 883433750043215 337 (-3.34887e+101) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011010 #b1100000100010111110010011110010100111100110011000110)))
(assert (= y (fp #b1 #b10000110100 #b0101110100011100011011100100111110000110000110000010)))
(assert (= r (fp #b1 #b10101010000 #b0011001000110111101001110010110110101001101001001111)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
