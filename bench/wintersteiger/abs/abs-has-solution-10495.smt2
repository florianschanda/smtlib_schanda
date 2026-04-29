(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4601202251249507657604453925159759819507598876953125p-581 {- 2072197274418357 -581 (-1.84485e-175)}
; -1.4601202251249507657604453925159759819507598876953125p-581 | == 1.4601202251249507657604453925159759819507598876953125p-581
; [HW: 1.4601202251249507657604453925159759819507598876953125p-581] 

; mpf : + 2072197274418357 -581
; mpfd: + 2072197274418357 -581 (1.84485e-175) class: Pos. norm. non-zero
; hwf : + 2072197274418357 -581 (1.84485e-175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110111010 #b0111010111001010011100000110011100100011110010110101)))
(assert (= r (fp #b0 #b00110111010 #b0111010111001010011100000110011100100011110010110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
