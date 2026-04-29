(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.8510197236253282948581500022555701434612274169921875p330 {+ 3832652110203971 330 (4.04864e+099)}
; +zero % 1.8510197236253282948581500022555701434612274169921875p330 == +zero
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
(assert (= y (fp #b0 #b10101001001 #b1101100111011100011011011011100100111000110001000011)))
(assert (= r (_ +zero 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
