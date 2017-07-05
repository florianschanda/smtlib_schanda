(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7433403493105223969195094468886964023113250732421875p881 {+ 3347707320164323 881 (2.81066e+265)}
; Y = -1.0902406445455989913995153983705677092075347900390625p823 {- 406407733149233 823 (-6.0983e+247)}
; 1.7433403493105223969195094468886964023113250732421875p881 < -1.0902406445455989913995153983705677092075347900390625p823 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101110000 #b1011111001001011100011011001101000010101111111100011)))
(assert (= y (fp #b1 #b11100110110 #b0001011100011010000000101100100100010111111000110001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
