(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0776641432318154745217952950042672455310821533203125p258 {- 349768206518853 258 (-4.9914e+077)}
; Y = 1.18036205838725560823831983725540339946746826171875p835 {+ 812278498944620 835 (2.70434e+251)}
; -1.0776641432318154745217952950042672455310821533203125p258 = 1.18036205838725560823831983725540339946746826171875p835 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000001 #b0001001111100001110011000001101101000000101001000101)))
(assert (= y (fp #b0 #b11101000010 #b0010111000101100001101010011011000110110011001101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
