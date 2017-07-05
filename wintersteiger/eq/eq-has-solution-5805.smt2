(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.015720090672338482562508943374268710613250732421875p-208 {+ 70796994494174 -208 (2.46908e-063)}
; Y = -1.0120093758127943761593314775382168591022491455078125p353 {- 54085420435453 353 (-1.85683e+106)}
; 1.015720090672338482562508943374268710613250732421875p-208 = -1.0120093758127943761593314775382168591022491455078125p353 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100101111 #b0000010000000110001110110101101101010011111011011110)))
(assert (= y (fp #b1 #b10101100000 #b0000001100010011000010111110010001011100011111111101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
