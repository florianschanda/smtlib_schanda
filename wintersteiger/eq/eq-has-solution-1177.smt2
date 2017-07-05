(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.375924114943843701297510051517747342586517333984375p374 {- 1693011703980678 374 (-5.29435e+112)}
; Y = 1.5633499464783378041232708710595034062862396240234375p484 {+ 2537102609039031 484 (7.80862e+145)}
; -1.375924114943843701297510051517747342586517333984375p374 = 1.5633499464783378041232708710595034062862396240234375p484 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110101 #b0110000000111100100100000001001101110110001010000110)))
(assert (= y (fp #b0 #b10111100011 #b1001000000110111101100111011110001010011111010110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
