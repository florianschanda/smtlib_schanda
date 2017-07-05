(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.157749589625029162931468817987479269504547119140625p-40 {- 710440993053130 -40 (-1.05297e-012)}
; Y = -1.1197566480833585078613623409182764589786529541015625p-311 {- 539335995683353 -311 (-2.68408e-094)}
; -1.157749589625029162931468817987479269504547119140625p-40 = -1.1197566480833585078613623409182764589786529541015625p-311 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111010111 #b0010100001100010010001101111000001100101100111001010)))
(assert (= y (fp #b1 #b01011001000 #b0001111010101000010111110010011011111111001000011001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
