(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3415469227330596435621146156336180865764617919921875p-715 {+ 1538190593950147 -715 (7.78321e-216)}
; Y = 1.3164837691060922164609792162082158029079437255859375p692 {+ 1425316184615007 692 (2.70503e+208)}
; 1.3415469227330596435621146156336180865764617919921875p-715 / 1.3164837691060922164609792162082158029079437255859375p692 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100110100 #b0101011101101111100111100111111100110000000111000011)))
(assert (= y (fp #b0 #b11010110011 #b0101000100000101000101001000111000000110100001011111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
