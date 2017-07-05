(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.38899567813962931950300117023289203643798828125p888 {- 1751880791118368 888 (-2.8664e+267)}
; Y = -1.36691160270403866405786175164394080638885498046875p914 {- 1652422957215820 914 (-1.89303e+275)}
; -1.38899567813962931950300117023289203643798828125p888 = -1.36691160270403866405786175164394080638885498046875p914 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101110111 #b0110001110010101001110001000001111100101001000100000)))
(assert (= y (fp #b1 #b11110010001 #b0101110111101101111010110011011000100011000001001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
