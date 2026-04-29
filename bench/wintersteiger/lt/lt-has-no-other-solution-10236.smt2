(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.423387388032071765309183319914154708385467529296875p7 {- 1906767282974606 7 (-182.194)}
; Y = -1.272336794320208408493044771603308618068695068359375p-423 {- 1226495885419766 -423 (-5.87373e-128)}
; -1.423387388032071765309183319914154708385467529296875p7 < -1.272336794320208408493044771603308618068695068359375p-423 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000110 #b0110110001100011000111011010100100100010111110001110)))
(assert (= y (fp #b1 #b01001011000 #b0100010110110111110111010011100100011010010011110110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
