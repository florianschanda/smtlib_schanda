(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0153591166649758026352401429903693497180938720703125p466 {- 69171312089125 466 (-1.93463e+140)}
; Y = -1.2293540563789779884729114201036281883716583251953125p729 {- 1032918842844277 729 (-3.47171e+219)}
; -1.0153591166649758026352401429903693497180938720703125p466 = -1.2293540563789779884729114201036281883716583251953125p729 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111010001 #b0000001111101110100100110011011111000101100000100101)))
(assert (= y (fp #b1 #b11011011000 #b0011101010110110111100101000101101011010010001110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
