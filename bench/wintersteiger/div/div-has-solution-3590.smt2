(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6409109510851827007371639410848729312419891357421875p-756 {- 2886406320484899 -756 (-4.32921e-228)}
; Y = -1.7453762039382756388050665918854065239429473876953125p800 {- 3356875994307253 800 (-1.16382e+241)}
; -1.6409109510851827007371639410848729312419891357421875p-756 / -1.7453762039382756388050665918854065239429473876953125p800 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100001011 #b1010010000010010101111010111011010001111001000100011)))
(assert (= y (fp #b1 #b11100011111 #b1011111011010000111110011001001100100001101010110101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
