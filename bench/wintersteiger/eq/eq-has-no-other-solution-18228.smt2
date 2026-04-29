(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2926389978627310650693971183500252664089202880859375p570 {- 1317928881728671 570 (-4.99545e+171)}
; Y = 1.798459906366892457896256019012071192264556884765625p679 {+ 3595943736784218 679 (4.51095e+204)}
; -1.2926389978627310650693971183500252664089202880859375p570 = 1.798459906366892457896256019012071192264556884765625p679 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000111001 #b0100101011101010011000111010110101011010110010011111)))
(assert (= y (fp #b0 #b11010100110 #b1100110001100111110111100101000100000011010101011010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
