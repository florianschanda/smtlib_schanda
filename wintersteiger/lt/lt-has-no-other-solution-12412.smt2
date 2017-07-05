(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.701579834794448853330095516867004334926605224609375p149 {- 3159634682550934 149 (-1.21429e+045)}
; Y = 1.872882368369613192982114924234338104724884033203125p392 {+ 3931112708927666 392 (1.88916e+118)}
; -1.701579834794448853330095516867004334926605224609375p149 < 1.872882368369613192982114924234338104724884033203125p392 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010010100 #b1011001110011010101111000110110111111001101010010110)))
(assert (= y (fp #b0 #b10110000111 #b1101111101110101001110000000100101100111000010110010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
