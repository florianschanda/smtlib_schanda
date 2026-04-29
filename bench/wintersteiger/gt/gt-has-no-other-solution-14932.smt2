(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9693363367372949124245451457682065665721893310546875p776 {- 4365502764926763 776 (-7.82702e+233)}
; Y = 1.5073087390681365604905295185744762420654296875p88 {+ 2284715448229056 88 (4.66489e+026)}
; -1.9693363367372949124245451457682065665721893310546875p776 > 1.5073087390681365604905295185744762420654296875p88 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100000111 #b1111100000100110011011010001100100011100011100101011)))
(assert (= y (fp #b0 #b10001010111 #b1000000111011110111111000100101101000101110011000000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
