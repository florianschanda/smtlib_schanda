(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6642712256056009234583825673325918614864349365234375p-228 {+ 2991611644110327 -228 (3.8582e-069)}
; Y = 1.805989725027362879927750327624380588531494140625p577 {+ 3629855025297680 577 (8.93352e+173)}
; 1.6642712256056009234583825673325918614864349365234375p-228 = 1.805989725027362879927750327624380588531494140625p577 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011011 #b1010101000001101101011011101010110100110010111110111)))
(assert (= y (fp #b0 #b11001000000 #b1100111001010101010101111011010111100111100100010000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
