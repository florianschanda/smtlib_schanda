(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.542452219382045353057719694334082305431365966796875p-419 {- 2442987613075278 -419 (-1.13931e-126)}
; Y = -1.870379786378068676100383527227677404880523681640625p660 {- 3919842081603082 660 (-8.94802e+198)}
; -1.542452219382045353057719694334082305431365966796875p-419 < -1.870379786378068676100383527227677404880523681640625p660 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011100 #b1000101011011110001001100000110111100011011101001110)))
(assert (= y (fp #b1 #b11010010011 #b1101111011010001001101011010110110010111111000001010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
