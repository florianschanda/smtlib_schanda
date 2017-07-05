(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.948118760200857391140516483574174344539642333984375p149 {+ 4269947295143558 149 (1.39022e+045)}
; Y = -0.40143717039628956655406000209040939807891845703125p-1022 {- 1807912291009396 -1023 (-8.93227e-309)}
; 1.948118760200857391140516483574174344539642333984375p149 > -0.40143717039628956655406000209040939807891845703125p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010010100 #b1111001010110111111010010011101111001001011010000110)))
(assert (= y (fp #b1 #b00000000000 #b0110011011000100100101100001111001000000001101110100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
