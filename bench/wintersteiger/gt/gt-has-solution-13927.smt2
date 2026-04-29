(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3810377585927617882788354108924977481365203857421875p-907 {+ 1716041507612451 -907 (1.27644e-273)}
; Y = -1.0510019460471886620922532529220916330814361572265625p-421 {- 229692345213289 -421 (-1.94078e-127)}
; 1.3810377585927617882788354108924977481365203857421875p-907 > -1.0510019460471886620922532529220916330814361572265625p-421 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001110100 #b0110000110001011101100001100011110110010011100100011)))
(assert (= y (fp #b1 #b01001011010 #b0000110100001110011101101010101001001110000101101001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
