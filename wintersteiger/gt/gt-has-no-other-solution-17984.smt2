(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.863892661328402144960136865847744047641754150390625p-424 {+ 3890626667646698 -424 (4.30232e-128)}
; Y = 1.9733198287312883056898726863437332212924957275390625p-655 {+ 4383442817986545 -655 (1.31993e-197)}
; 1.863892661328402144960136865847744047641754150390625p-424 > 1.9733198287312883056898726863437332212924957275390625p-655 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010111 #b1101110100101000000100011100011110101000111011101010)))
(assert (= y (fp #b0 #b00101110000 #b1111100100101011011111010000000011110010111111110001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
