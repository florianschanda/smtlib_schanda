(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.31905409156422148697629381786100566387176513671875p-935 {- 1436891887879660 -935 (-4.54168e-282)}
; Y = 1.308894064662752487748775820364244282245635986328125p122 {+ 1391135194512130 122 (6.95927e+036)}
; -1.31905409156422148697629381786100566387176513671875p-935 > 1.308894064662752487748775820364244282245635986328125p122 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001011000 #b0101000110101101100001110110100011101100010111101100)))
(assert (= y (fp #b0 #b10001111001 #b0100111100010011101011100111000110100111101100000010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
