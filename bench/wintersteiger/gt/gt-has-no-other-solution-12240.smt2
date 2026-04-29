(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8317752820889683373906109409290365874767303466796875p-308 {+ 3745982850471867 -308 (3.51264e-093)}
; Y = 1.8652323204861678274113501174724660813808441162109375p-822 {+ 3896659956130415 -822 (6.66924e-248)}
; 1.8317752820889683373906109409290365874767303466796875p-308 > 1.8652323204861678274113501174724660813808441162109375p-822 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011001011 #b1101010011101111001110011001001000110001011110111011)))
(assert (= y (fp #b0 #b00011001001 #b1101110101111111110111011000011111101110001001101111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
