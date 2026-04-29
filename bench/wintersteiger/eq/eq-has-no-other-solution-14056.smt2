(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.02443506357699032349728440749458968639373779296875p-76 {+ 110045743220108 -76 (1.35583e-023)}
; Y = 1.8355067459934730766946131552685983479022979736328125p-994 {+ 3762787869921741 -994 (1.09633e-299)}
; 1.02443506357699032349728440749458968639373779296875p-76 = 1.8355067459934730766946131552685983479022979736328125p-994 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110110011 #b0000011001000001011000000101011011110000010110001100)))
(assert (= y (fp #b0 #b00000011101 #b1101010111100011110001010010010110100001000111001101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
