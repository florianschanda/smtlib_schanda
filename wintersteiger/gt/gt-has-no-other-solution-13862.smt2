(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.38569275816138404167077169404365122318267822265625p-86 {+ 1737005761935108 -86 (1.79097e-026)}
; Y = -1.6410937245502885684089733331347815692424774169921875p-777 {- 2887229458994243 -777 (-2.06456e-234)}
; 1.38569275816138404167077169404365122318267822265625p-86 > -1.6410937245502885684089733331347815692424774169921875p-777 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101001 #b0110001010111100110000101011011010011011011100000100)))
(assert (= y (fp #b1 #b00011110110 #b1010010000011110101101111110010010011101010001000011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
