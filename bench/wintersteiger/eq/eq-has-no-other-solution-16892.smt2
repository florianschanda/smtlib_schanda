(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.25087203994395235184811099315993487834930419921875p113 {+ 1129827225609260 113 (1.29898e+034)}
; Y = 1.40332680070053417153985719778575003147125244140625p3 {+ 1816422429343460 3 (11.2266)}
; 1.25087203994395235184811099315993487834930419921875p113 = 1.40332680070053417153985719778575003147125244140625p3 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001110000 #b0100000000111001001001100110011100001010010000101100)))
(assert (= y (fp #b0 #b10000000010 #b0110011101000000011011001101101010011011111011100100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
