(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2285186180093912167166081417235545814037322998046875p-709 {- 1029156362914315 -709 (-4.56157e-214)}
; Y = 1.8727123424594533940279461603495292365550994873046875p199 {+ 3930346980302027 199 (1.50467e+060)}
; -1.2285186180093912167166081417235545814037322998046875p-709 < 1.8727123424594533940279461603495292365550994873046875p199 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100111010 #b0011101010000000001100100011011011100000101000001011)))
(assert (= y (fp #b0 #b10011000110 #b1101111101101010000100110111100110101101110011001011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
