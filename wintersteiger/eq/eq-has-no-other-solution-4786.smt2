(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8012407227172186896524408439290709793567657470703125p-283 {- 3608467420263333 -283 (-1.159e-085)}
; Y = -1.6013797670013609764083639674936421215534210205078125p935 {- 2708373694575485 935 (-4.65094e+281)}
; -1.8012407227172186896524408439290709793567657470703125p-283 = -1.6013797670013609764083639674936421215534210205078125p935 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011100100 #b1100110100011110000111001010110001001011001110100101)))
(assert (= y (fp #b1 #b11110100110 #b1001100111110100000001100011111110111111001101111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
