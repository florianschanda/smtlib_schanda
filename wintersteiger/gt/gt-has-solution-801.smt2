(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0301172070151523030290263704955577850341796875p-84 {- 135635842290880 -84 (-5.32558e-026)}
; Y = -1.29106513495229702215283396071754395961761474609375p-439 {- 1310840833311708 -439 (-9.09453e-133)}
; -1.0301172070151523030290263704955577850341796875p-84 > -1.29106513495229702215283396071754395961761474609375p-439 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110101011 #b0000011110110101110000101110001100101101010011000000)))
(assert (= y (fp #b1 #b01001001000 #b0100101010000011001111101010001110100000001111011100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
