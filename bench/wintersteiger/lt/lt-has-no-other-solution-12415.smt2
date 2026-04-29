(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9126518445323090755749717573053203523159027099609375p-49 {- 4110218506954703 -49 (-3.39755e-015)}
; Y = -1.2086885933308699758725879291887395083904266357421875p695 {- 939849871161379 695 (-1.98683e+209)}
; -1.9126518445323090755749717573053203523159027099609375p-49 < -1.2086885933308699758725879291887395083904266357421875p695 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001110 #b1110100110100011100011010010000011100110011111001111)))
(assert (= y (fp #b1 #b11010110110 #b0011010101101100100111011001101101100111100000100011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
