(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.496105445027464231344538347912020981311798095703125p-739 {+ 2234260297362162 -739 (5.17363e-223)}
; Y = -1.56679608931223679491040456923656165599822998046875p352 {- 2552622656621644 352 (-1.43738e+106)}
; 1.496105445027464231344538347912020981311798095703125p-739 = -1.56679608931223679491040456923656165599822998046875p352 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100011100 #b0111111100000000110001000011010111000010101011110010)))
(assert (= y (fp #b1 #b10101011111 #b1001000100011001100011000110101100011000110001001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
