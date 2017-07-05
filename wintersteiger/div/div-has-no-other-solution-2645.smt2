(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.0160029776104899656985480760340578854084014892578125p-1022 {+ 72071004003421 -1023 (3.56078e-310)}
; Y = -1.0768814564250750454021954283234663307666778564453125p-872 {- 346243298507669 -872 (-3.41989e-263)}
; 0.0160029776104899656985480760340578854084014892578125p-1022 / -1.0768814564250750454021954283234663307666778564453125p-872 == -1.9021417092116428282366769053624011576175689697265625p-157
; [HW: -1.9021417092116428282366769053624011576175689697265625p-157] 

; mpf : - 4062885065440937 -157
; mpfd: - 4062885065440937 -157 (-1.0412e-047) class: Neg. norm. non-zero
; hwf : - 4062885065440937 -157 (-1.0412e-047) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000010000011000110001010110100101111001110001011101)))
(assert (= y (fp #b1 #b00010010111 #b0001001110101110100000001100110100000011101110010101)))
(assert (= r (fp #b1 #b01101100010 #b1110011011110010110000100101000101101011111010101001)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
