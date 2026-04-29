(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4320571063104179376779256926965899765491485595703125p773 {+ 1945812222982373 773 (7.11454e+232)}
; Y = -1.659447250749524815915947328903712332248687744140625p109 {- 2969886392746058 109 (-1.07704e+033)}
; 1.4320571063104179376779256926965899765491485595703125p773 = -1.659447250749524815915947328903712332248687744140625p109 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000100 #b0110111010011011010010110110010110011011100011100101)))
(assert (= y (fp #b1 #b10001101100 #b1010100011010001100010001111011101101000000001001010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
