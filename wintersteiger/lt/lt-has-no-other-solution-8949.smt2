(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5126174390806685909893758434918709099292755126953125p-477 {- 2308623707627317 -477 (-3.87633e-144)}
; Y = -1.3595172776916790713386262723361141979694366455078125p400 {- 1619121877845501 400 (-3.51061e+120)}
; -1.5126174390806685909893758434918709099292755126953125p-477 < -1.3595172776916790713386262723361141979694366455078125p400 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100010 #b1000001100111010111001011000000000110101111100110101)))
(assert (= y (fp #b1 #b10110001111 #b0101110000001001010100110000011000001000010111111101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
