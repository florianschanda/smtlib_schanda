(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7301749685360030550640431101783178746700286865234375p-610 {+ 3288415716214007 -610 (4.07186e-184)}
; Y = -1.60513224866157866443927559885196387767791748046875p-934 {- 2725273369582156 -934 (-1.10534e-281)}
; 1.7301749685360030550640431101783178746700286865234375p-610 = -1.60513224866157866443927559885196387767791748046875p-934 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110011101 #b1011101011101100101111110010101000111000010011110111)))
(assert (= y (fp #b1 #b00001011001 #b1001101011101001111100100111000111000001101001001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
