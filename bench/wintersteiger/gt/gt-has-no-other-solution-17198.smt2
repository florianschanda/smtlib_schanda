(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.451687756774581838925541887874715030193328857421875p1009 {- 2034220813097822 1009 (-7.96414e+303)}
; Y = -1.4156973372198586869075143113150261342525482177734375p-578 {- 1872134373002263 -578 (-1.43098e-174)}
; -1.451687756774581838925541887874715030193328857421875p1009 > -1.4156973372198586869075143113150261342525482177734375p-578 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111110000 #b0111001110100001110011110000111101011001101101011110)))
(assert (= y (fp #b1 #b00110111101 #b0110101001101011001001000000010001100100110000010111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
