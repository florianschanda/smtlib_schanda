(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.758176962912876728495348288561217486858367919921875p561 {- 3414525487655326 561 (-1.32706e+169)}
; Y = -1.968515302604758598903345045982860028743743896484375p235 {- 4361805155913414 235 (-1.0869e+071)}
; -1.758176962912876728495348288561217486858367919921875p561 < -1.968515302604758598903345045982860028743743896484375p235 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000110000 #b1100001000010111111000101010110001001010100110011110)))
(assert (= y (fp #b1 #b10011101010 #b1111011111110000100111100110111001011100111011000110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
