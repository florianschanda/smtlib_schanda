(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.946648660441065548099004445248283445835113525390625p-334 {+ 4263326554413162 -334 (5.56249e-101)}
; Y = -1.76090184995748000318371850880794227123260498046875p238 {- 3426797287934028 238 (-7.77811e+071)}
; 1.946648660441065548099004445248283445835113525390625p-334 > -1.76090184995748000318371850880794227123260498046875p238 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010110001 #b1111001001010111100100010000110101100101100001101010)))
(assert (= y (fp #b1 #b10011101101 #b1100001011001010011101101011000100001000100001001100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
