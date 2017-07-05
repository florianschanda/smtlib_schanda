(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.741894556534744342712883735657669603824615478515625p-939 {+ 3341196048358074 -939 (3.74849e-283)}
; Y = 1.320396320847290194677725594374351203441619873046875p290 {+ 1442936751178734 290 (2.62666e+087)}
; 1.741894556534744342712883735657669603824615478515625p-939 > 1.320396320847290194677725594374351203441619873046875p290 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001010100 #b1011110111101100110011010011100101100101101010111010)))
(assert (= y (fp #b0 #b10100100001 #b0101001000000101011111100100011111001100001111101110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
