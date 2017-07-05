(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.192943009276991261913281050510704517364501953125p524 {- 868938064683600 524 (-6.55145e+157)}
; Y = -1.5617196430429178821697178136673755943775177001953125p613 {- 2529760375094773 613 (-5.30873e+184)}
; -1.192943009276991261913281050510704517364501953125p524 = -1.5617196430429178821697178136673755943775177001953125p613 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000001011 #b0011000101100100101101101000101011010110001001010000)))
(assert (= y (fp #b1 #b11001100100 #b1000111111001100110110111100100001100011110111110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
