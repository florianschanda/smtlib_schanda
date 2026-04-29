(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8811555873053833476404861357877962291240692138671875p-548 {+ 3968371974643955 -548 (2.04168e-165)}
; Y = -1.1522101942251390394034160635783337056636810302734375p-35 {- 685493773994327 -35 (-3.35337e-011)}
; 1.8811555873053833476404861357877962291240692138671875p-548 < -1.1522101942251390394034160635783337056636810302734375p-35 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111011011 #b1110000110010011011010011001111000101010000011110011)))
(assert (= y (fp #b1 #b01111011100 #b0010011011110111001111110100111001010000100101010111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
