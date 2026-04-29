(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.16606590093466433444291396881453692913055419921875p-257 {- 747894329568300 -257 (-5.03517e-078)}
; Y = 1.0554728417200742729420426258002407848834991455078125p848 {+ 249827469299709 848 (1.981e+255)}
; -1.16606590093466433444291396881453692913055419921875p-257 < 1.0554728417200742729420426258002407848834991455078125p848 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011111110 #b0010101010000011010010110111110101111110110000101100)))
(assert (= y (fp #b0 #b11101001111 #b0000111000110011011101111101100100000000111111111101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
