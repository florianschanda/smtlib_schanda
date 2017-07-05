(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.786476228323639059425431696581654250621795654296875p21 {- 3541974048814094 21 (-3.74651e+006)}
; Y = 1.9125396368325116025488341620075516402721405029296875p898 {+ 4109713168399707 898 (4.04154e+270)}
; -1.786476228323639059425431696581654250621795654296875p21 < 1.9125396368325116025488341620075516402721405029296875p898 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000010100 #b1100100101010110100000011000111110111011010000001110)))
(assert (= y (fp #b0 #b11110000001 #b1110100110011100001100101001100001111111110101011011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
