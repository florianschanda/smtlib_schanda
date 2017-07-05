(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6493900211083218909635661475476808845996856689453125p-62 {- 2924592657081557 -62 (-3.57654e-019)}
; Y = -1.6972491657040771340092533137067221105098724365234375p573 {- 3140131082849271 573 (-5.24727e+172)}
; -1.6493900211083218909635661475476808845996856689453125p-62 < -1.6972491657040771340092533137067221105098724365234375p573 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000001 #b1010011000111110011011001010011100000010010011010101)))
(assert (= y (fp #b1 #b11000111100 #b1011001001111110111010111101101111011100101111110111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
