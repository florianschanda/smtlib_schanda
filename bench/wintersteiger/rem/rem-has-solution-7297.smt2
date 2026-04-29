(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.6691687610234804406417197242262773215770721435546875p-213 {- 3013668182793323 -213 (-1.26798e-064)}
; +zero % -1.6691687610234804406417197242262773215770721435546875p-213 == +zero
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
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01100101010 #b1010101101001110101001001101100000011001110001101011)))
(assert (= r (_ +zero 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
