(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1570839113037096890224120215862058103084564208984375p258 {- 707443044413287 258 (-5.35925e+077)}
; Y = 1.9536189811959381312789219009573571383953094482421875p22 {+ 4294718088367459 22 (8.19407e+006)}
; -1.1570839113037096890224120215862058103084564208984375p258 > 1.9536189811959381312789219009573571383953094482421875p22 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000001 #b0010100000110110101001101011010111000110111101100111)))
(assert (= y (fp #b0 #b10000010101 #b1111010000100000010111111010000100010100110101100011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
