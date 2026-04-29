(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.47113750840719159640457291970960795879364013671875p997 {- 2121814707302892 997 (-1.97042e+300)}
; Y = -1.3604077080563428125969949178397655487060546875p-73 {- 1623132019704000 -73 (-1.44039e-022)}
; -1.47113750840719159640457291970960795879364013671875p997 < -1.3604077080563428125969949178397655487060546875p-73 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111100100 #b0111100010011100011101111011111010000111000111101100)))
(assert (= y (fp #b1 #b01110110110 #b0101110001000011101011011111011101010100000011000000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
