(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5483747507782836816403460034052841365337371826171875p558 {+ 2469660323264467 558 (1.46088e+168)}
; Y = 1.440856480389722804602570249699056148529052734375p-423 {+ 1985441080807024 -423 (6.6517e-128)}
; 1.5483747507782836816403460034052841365337371826171875p558 = 1.440856480389722804602570249699056148529052734375p-423 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101101 #b1000110001100010010010011010010010001011011111010011)))
(assert (= y (fp #b0 #b01001011000 #b0111000011011011111110000110010110000000111001110000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
