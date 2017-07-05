(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.44315706110081531932110010529868304729461669921875p596 {- 1995801975240236 596 (-3.74275e+179)}
; Y = 1.0841731836189751891907917524804361164569854736328125p468 {+ 379082318381005 468 (8.26298e+140)}
; -1.44315706110081531932110010529868304729461669921875p596 < 1.0841731836189751891907917524804361164569854736328125p468 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010011 #b0111000101110010101111011011110001101011011000101100)))
(assert (= y (fp #b0 #b10111010011 #b0001010110001100010111111010111011010111111111001101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
