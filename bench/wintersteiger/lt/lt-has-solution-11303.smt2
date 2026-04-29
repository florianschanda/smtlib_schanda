(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4113910889351488631149322827695868909358978271484375p507 {- 1852740754831879 507 (-5.91364e+152)}
; Y = 1.082116371629391782249740572297014296054840087890625p-47 {+ 369819260671146 -47 (7.6889e-015)}
; -1.4113910889351488631149322827695868909358978271484375p507 < 1.082116371629391782249740572297014296054840087890625p-47 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111010 #b0110100101010000111011010010100011010111101000000111)))
(assert (= y (fp #b0 #b01111010000 #b0001010100000101100101000001101010011101010010101010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
