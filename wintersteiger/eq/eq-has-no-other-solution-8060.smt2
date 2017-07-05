(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.32395253005621693631610469310544431209564208984375p746 {+ 1458952493646908 746 (4.9006e+224)}
; Y = -1.0628965845007931623200647663907147943973541259765625p741 {- 283261034520649 741 (-1.22947e+223)}
; 1.32395253005621693631610469310544431209564208984375p746 = -1.0628965845007931623200647663907147943973541259765625p741 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011101001 #b0101001011101110100011011001001000001100010000111100)))
(assert (= y (fp #b1 #b11011100100 #b0001000000011001111111011001010101110110000001001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
