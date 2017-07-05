(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9678265824392562333144951480790041387081146240234375p-463 {+ 4358703436032695 -463 (8.26226e-140)}
; Y = -1.564139838005622618055667771841399371623992919921875p-473 {- 2540659964226974 -473 (-6.41339e-143)}
; 1.9678265824392562333144951480790041387081146240234375p-463 = -1.564139838005622618055667771841399371623992919921875p-473 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000110000 #b1111011111000011011110111001111111000110101010110111)))
(assert (= y (fp #b1 #b01000100110 #b1001000001101011011101111110101010011010110110011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
