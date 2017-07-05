(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1902995232521049739915497411857359111309051513671875p454 {+ 857032862006963 454 (5.537e+136)}
; Y = -1.4376998318347207206358007169910706579685211181640625p-401 {- 1971224799550977 -401 (-2.78381e-121)}
; 1.1902995232521049739915497411857359111309051513671875p454 < -1.4376998318347207206358007169910706579685211181640625p-401 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111000101 #b0011000010110111011110000011010011001111111010110011)))
(assert (= y (fp #b1 #b01001101110 #b0111000000001101000110001001111100110001111000000001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
