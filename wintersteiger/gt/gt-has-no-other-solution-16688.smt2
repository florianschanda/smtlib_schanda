(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1588893930362689221880145851173438131809234619140625p-813 {- 715574211271265 -813 (-2.12156e-245)}
; Y = -1.00266819088619296707065586815588176250457763671875p628 {- 12016463480812 628 (-1.11685e+189)}
; -1.1588893930362689221880145851173438131809234619140625p-813 > -1.00266819088619296707065586815588176250457763671875p628 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011010010 #b0010100010101100111110011010101011000101101001100001)))
(assert (= y (fp #b1 #b11001110011 #b0000000010101110110111001101000010011000011111101100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
