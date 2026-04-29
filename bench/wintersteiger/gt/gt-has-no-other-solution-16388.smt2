(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3997540687556557781334731771494261920452117919921875p-257 {+ 1800332275087811 -257 (6.04426e-078)}
; Y = 1.1454455994169112642566688009537756443023681640625p-317 {+ 655028747336680 -317 (4.29008e-096)}
; 1.3997540687556557781334731771494261920452117919921875p-257 > 1.1454455994169112642566688009537756443023681640625p-317 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011111110 #b0110011001010110010010000101101110111111100111000011)))
(assert (= y (fp #b0 #b01011000010 #b0010010100111011111011000011110011010111101111101000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
