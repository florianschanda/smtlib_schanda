(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0314906288684364543684068848961032927036285400390625p16 {- 141821184437553 16 (-67599.8)}
; Y = -1.8380686082151760363245784901664592325687408447265625p-1017 {- 3774325471668777 -1017 (-1.30875e-306)}
; -1.0314906288684364543684068848961032927036285400390625p16 > -1.8380686082151760363245784901664592325687408447265625p-1017 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000001111 #b0000100000001111110001010001010100011110110100110001)))
(assert (= y (fp #b1 #b00000000110 #b1101011010001011101010100001000000010110101000101001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
