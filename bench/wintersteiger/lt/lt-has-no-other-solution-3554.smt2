(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.413518292461038328156064380891621112823486328125p-319 {+ 1862320827838416 -319 (1.32353e-096)}
; Y = 1.9470067396484438404513639397919178009033203125p-354 {+ 4264939199798080 -354 (5.30578e-107)}
; 1.413518292461038328156064380891621112823486328125p-319 < 1.9470067396484438404513639397919178009033203125p-354 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011000000 #b0110100111011100010101011011011001101010111111010000)))
(assert (= y (fp #b0 #b01010011101 #b1111001001101111000010001001111111100001101101000000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
