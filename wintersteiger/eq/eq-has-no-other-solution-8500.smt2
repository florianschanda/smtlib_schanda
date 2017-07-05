(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.834183750413495683773135169758461415767669677734375p637 {- 3756829627520742 637 (-1.04604e+192)}
; Y = 1.7507271318023585049417079062550328671932220458984375p716 {+ 3380974431042023 716 (6.03525e+215)}
; -1.834183750413495683773135169758461415767669677734375p637 = 1.7507271318023585049417079062550328671932220458984375p716 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001111100 #b1101010110001101000100001111011011100001011011100110)))
(assert (= y (fp #b0 #b11011001011 #b1100000000101111101001110011111101001111100111100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
