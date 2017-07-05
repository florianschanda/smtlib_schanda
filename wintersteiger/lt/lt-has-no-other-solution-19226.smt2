(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9829109624154508395577067858539521694183349609375p561 {- 4426637444072600 561 (-1.49669e+169)}
; Y = 1.1438707531159344465976346327806822955608367919921875p-334 {+ 647936270122435 -334 (3.26857e-101)}
; -1.9829109624154508395577067858539521694183349609375p561 < 1.1438707531159344465976346327806822955608367919921875p-334 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000110000 #b1111101110100000000011011000011001110100010010011000)))
(assert (= y (fp #b0 #b01010110001 #b0010010011010100101101101011001101111011110111000011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
