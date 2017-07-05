(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.814767131061269633818255897494964301586151123046875p62 {- 3669384947841262 62 (-8.36914e+018)}
; Y = -1.0789329589838903000753589367377571761608123779296875p-515 {- 355482444667099 -515 (-1.00588e-155)}
; -1.814767131061269633818255897494964301586151123046875p62 > -1.0789329589838903000753589367377571761608123779296875p-515 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111101 #b1101000010010100100101000010010111000011100011101110)))
(assert (= y (fp #b1 #b00111111100 #b0001010000110100111100110100110101101001100011011011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
