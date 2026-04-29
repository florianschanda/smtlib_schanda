(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1344663982760840870156471282825805246829986572265625p61 {- 605582821170025 61 (-2.6159e+018)}
; Y = 1.533380449263862743691788637079298496246337890625p101 {+ 2402131992551440 101 (3.88758e+030)}
; -1.1344663982760840870156471282825805246829986572265625p61 = 1.533380449263862743691788637079298496246337890625p101 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111100 #b0010001001101100011000111100111100000001101101101001)))
(assert (= y (fp #b0 #b10001100100 #b1000100010001011100111110000000111101010000000010000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
