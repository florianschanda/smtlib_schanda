(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.69583610177676202823704443289898335933685302734375p202 {- 3133767208672764 202 (-1.09004e+061)}
; Y = 1.2810676763414774459448608467937447130680084228515625p-603 {+ 1265816282437369 -603 (3.85909e-182)}
; -1.69583610177676202823704443289898335933685302734375p202 < 1.2810676763414774459448608467937447130680084228515625p-603 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011001001 #b1011001000100010010100001001010010000001110111111100)))
(assert (= y (fp #b0 #b00110100100 #b0100011111110100000011010001110111011001011011111001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
