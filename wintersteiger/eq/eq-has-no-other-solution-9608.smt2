(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.16716578416379501703659116174094378948211669921875p92 {+ 752847763269164 92 (5.77953e+027)}
; Y = 1.7585529054091464384868004344752989709377288818359375p530 {+ 3416218582141439 530 (6.18092e+159)}
; 1.16716578416379501703659116174094378948211669921875p92 = 1.7585529054091464384868004344752989709377288818359375p530 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001011011 #b0010101011001011011000000111011111111110011000101100)))
(assert (= y (fp #b0 #b11000010001 #b1100001000110000100001011111000100000100100111111111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
