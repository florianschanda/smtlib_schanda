(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.847449388356132704558376644854433834552764892578125p-420 {- 3816572749616034 -420 (-6.82298e-127)}
; Y = 1.3046950063047597634380281306221149861812591552734375p-960 {+ 1372224316855767 -960 (1.33879e-289)}
; -1.847449388356132704558376644854433834552764892578125p-420 < 1.3046950063047597634380281306221149861812591552734375p-960 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011011 #b1101100011110010011100010111000000000001001110100010)))
(assert (= y (fp #b0 #b00000111111 #b0100111000000000011111011110111101010101010111010111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
