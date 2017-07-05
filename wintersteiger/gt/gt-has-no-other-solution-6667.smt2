(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.68379634069078942815167465596459805965423583984375p190 {- 3079544945132348 190 (-2.64234e+057)}
; Y = -1.0216686261321756834519192125299014151096343994140625p458 {- 97586816574497 458 (-7.6041e+137)}
; -1.68379634069078942815167465596459805965423583984375p190 > -1.0216686261321756834519192125299014151096343994140625p458 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010111101 #b1010111100001101010001101110100001100100001100111100)))
(assert (= y (fp #b1 #b10111001001 #b0000010110001100000100110011100010010110010000100001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
