(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.450761180892114143858862007618881762027740478515625p-757 {- 2030047886298810 -757 (-1.91377e-228)}
; Y = 1.8758654310648898988489463590667583048343658447265625p238 {+ 3944547228970537 238 (8.28592e+071)}
; -1.450761180892114143858862007618881762027740478515625p-757 % 1.8758654310648898988489463590667583048343658447265625p238 == -1.450761180892114143858862007618881762027740478515625p-757
; [HW: -1.450761180892114143858862007618881762027740478515625p-757] 

; mpf : - 2030047886298810 -757
; mpfd: - 2030047886298810 -757 (-1.91377e-228) class: Neg. norm. non-zero
; hwf : - 2030047886298810 -757 (-1.91377e-228) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100001010 #b0111001101100101000101011011001000111100111010111010)))
(assert (= y (fp #b0 #b10011101101 #b1110000000111000101101111000011000011110111000101001)))
(assert (= r (fp #b1 #b00100001010 #x736515b23ceba)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
