(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8816289049817367384775934624485671520233154296875p1005 {+ 3970503607954808 1005 (6.45178e+302)}
; Y = -1.19089944027454119890307993046008050441741943359375p862 {- 859734648085660 862 (-3.66211e+259)}
; 1.8816289049817367384775934624485671520233154296875p1005 > -1.19089944027454119890307993046008050441741943359375p862 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101100 #b1110000110110010011011101001001000011010110101111000)))
(assert (= y (fp #b1 #b11101011101 #b0011000011011110110010010010010011001101110010011100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
