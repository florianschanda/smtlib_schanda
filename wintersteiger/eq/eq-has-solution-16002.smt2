(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1160150883655004516725739449611864984035491943359375p-1010 {+ 522485508732223 -1010 (1.01713e-304)}
; Y = 1.7055981626975669218637676749494858086109161376953125p-923 {+ 3177731622598069 -923 (2.40542e-278)}
; 1.1160150883655004516725739449611864984035491943359375p-1010 = 1.7055981626975669218637676749494858086109161376953125p-923 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000001101 #b0001110110110011001010100011001001011111010100111111)))
(assert (= y (fp #b0 #b00001100100 #b1011010010100010000101001100100011100111010110110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
