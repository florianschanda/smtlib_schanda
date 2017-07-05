(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.067340263815715228901126465643756091594696044921875p420 {- 303273587027486 420 (-2.89002e+126)}
; Y = -1.972397831561795822352678442257456481456756591796875p-152 {- 4379290511877582 -152 (-3.4549e-046)}
; -1.067340263815715228901126465643756091594696044921875p420 > -1.972397831561795822352678442257456481456756591796875p-152 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110100011 #b0001000100111101001101100010011011001010111000011110)))
(assert (= y (fp #b1 #b01101100111 #b1111100011101111000100000111010101000010010111001110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
