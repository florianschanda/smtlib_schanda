(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.539852750513354795458553780918009579181671142578125p-975 {- 2431280646046882 -975 (-4.82207e-294)}
; Y = -1.530696413533823463382077534333802759647369384765625p835 {- 2390044170237786 835 (-3.507e+251)}
; -1.539852750513354795458553780918009579181671142578125p-975 < -1.530696413533823463382077534333802759647369384765625p835 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000110000 #b1000101000110011110010100011010000011100010010100010)))
(assert (= y (fp #b1 #b11101000010 #b1000011111011011101110000101110000111011011101011010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
