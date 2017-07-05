(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.935407089849631834255205831141211092472076416015625p-691 {- 4212699021286522 -691 (-1.88385e-208)}
; Y = 1.17329246285742616606739829876460134983062744140625p-676 {+ 780439871150820 -676 (3.74222e-204)}
; -1.935407089849631834255205831141211092472076416015625p-691 * 1.17329246285742616606739829876460134983062744140625p-676 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101001100 #b1110111101110110110101101100101101011001110001111010)))
(assert (= y (fp #b0 #b00101011011 #b0010110001011100111001010001010010011101101011100100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
