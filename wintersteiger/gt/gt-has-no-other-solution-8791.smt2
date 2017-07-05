(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9998987768673917031492237583734095096588134765625p-778 {- 4503143758908200 -778 (-1.25797e-234)}
; Y = 1.895909921940841069698535648058168590068817138671875p-43 {+ 4034819590610302 -43 (2.1554e-013)}
; -1.9998987768673917031492237583734095096588134765625p-778 > 1.895909921940841069698535648058168590068817138671875p-43 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110101 #b1111111111111001010111011100000111110100101100101000)))
(assert (= y (fp #b0 #b01111010100 #b1110010101011010010110100100011011100101110101111110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
