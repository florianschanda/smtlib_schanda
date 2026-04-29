(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9180415530784749034154401670093648135662078857421875p-842 {+ 4134491596354851 -842 (6.54036e-254)}
; Y = -0.1466321386596884934760964824818074703216552734375p-1022 {- 660372445028312 -1023 (-3.26267e-309)}
; 1.9180415530784749034154401670093648135662078857421875p-842 > -0.1466321386596884934760964824818074703216552734375p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010110101 #b1110101100000100110001010110111011010111010100100011)))
(assert (= y (fp #b1 #b00000000000 #b0010010110001001101011110001000000010101111111011000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
