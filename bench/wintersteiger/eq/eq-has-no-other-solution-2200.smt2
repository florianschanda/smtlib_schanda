(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5601260529643201646621264444547705352306365966796875p-501 {+ 2522583483410619 -501 (2.38304e-151)}
; Y = -1.82994363878974031223378915456123650074005126953125p-886 {- 3737733862391988 -886 (-3.547e-267)}
; 1.5601260529643201646621264444547705352306365966796875p-501 = -1.82994363878974031223378915456123650074005126953125p-886 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000001010 #b1000111101100100011010111100011100011110100010111011)))
(assert (= y (fp #b1 #b00010001001 #b1101010001110111001011111011001000100000000010110100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
