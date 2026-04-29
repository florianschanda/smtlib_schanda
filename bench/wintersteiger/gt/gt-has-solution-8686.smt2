(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.293998032567183376073671752237714827060699462890625p1023 {+ 1324049429917226 1023 (1.16311e+308)}
; Y = -1.710688575719428339283467721543274819850921630859375p-855 {- 3200656804786486 -855 (-7.12073e-258)}
; 1.293998032567183376073671752237714827060699462890625p1023 > -1.710688575719428339283467721543274819850921630859375p-855 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111111110 #b0100101101000011011101000111111011110110111000101010)))
(assert (= y (fp #b1 #b00010101000 #b1011010111101111101011111011111001011011000100110110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
