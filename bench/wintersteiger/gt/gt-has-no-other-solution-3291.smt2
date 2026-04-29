(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.02682196578128692721065817750059068202972412109375p460 {+ 120795395097948 460 (3.05698e+138)}
; Y = 1.1835119808235579075272880800184793770313262939453125p-333 {+ 826464488454997 -333 (6.7637e-101)}
; 1.02682196578128692721065817750059068202972412109375p460 > 1.1835119808235579075272880800184793770313262939453125p-333 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111001011 #b0000011011011101110011011110100111011000010101011100)))
(assert (= y (fp #b0 #b01010110010 #b0010111011111010101001000010010000001111101101010101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
