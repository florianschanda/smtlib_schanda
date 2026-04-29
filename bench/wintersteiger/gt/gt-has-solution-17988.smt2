(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.214440182290754677296718000434339046478271484375p-619 {- 965752725057904 -619 (-5.58224e-187)}
; Y = 1.4452994930344134072441875105141662061214447021484375p942 {+ 2005450630898055 942 (5.37296e+283)}
; -1.214440182290754677296718000434339046478271484375p-619 > 1.4452994930344134072441875105141662061214447021484375p942 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110010100 #b0011011011100101100011010100000111100011000101110000)))
(assert (= y (fp #b0 #b11110101101 #b0111000111111111001001011100011110000010000110000111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
