(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1124451861879116609799211801146157085895538330078125p599 {+ 506408098615485 599 (2.30805e+180)}
; Y = 1.460963776601853059133873102837242186069488525390625p-641 {+ 2075996292535402 -641 (1.60108e-193)}
; 1.1124451861879116609799211801146157085895538330078125p599 < 1.460963776601853059133873102837242186069488525390625p-641 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001010110 #b0001110011001001001101010010110101000101000010111101)))
(assert (= y (fp #b0 #b00101111110 #b0111011000000001101110001101100100100101010001101010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
