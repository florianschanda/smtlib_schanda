(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5312134328317357212512206388055346906185150146484375p207 {+ 2392372618155207 207 (3.14952e+062)}
; Y = -1.84878124314373426528845811844803392887115478515625p-466 {- 3822570890341188 -466 (-9.70303e-141)}
; 1.5312134328317357212512206388055346906185150146484375p207 > -1.84878124314373426528845811844803392887115478515625p-466 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011001110 #b1000011111111101100110101000000100110101010011000111)))
(assert (= y (fp #b1 #b01000101101 #b1101100101001001101110100100000011000010101101000100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
