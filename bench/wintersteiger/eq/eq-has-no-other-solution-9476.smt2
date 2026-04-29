(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.51194226298758938042965382919646799564361572265625p-262 {- 2305582984826116 -262 (-2.04022e-079)}
; Y = 1.2466602756189433254263576600351370871067047119140625p207 {+ 1110859125364577 207 (2.56423e+062)}
; -1.51194226298758938042965382919646799564361572265625p-262 = 1.2466602756189433254263576600351370871067047119140625p207 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011111001 #b1000001100001110101001011110110011111000110100000100)))
(assert (= y (fp #b0 #b10011001110 #b0011111100100101001000001011100100000001011101100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
