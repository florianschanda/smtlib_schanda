(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.403450638774651704210327807231806218624114990234375p-467 {- 1816980146447910 -467 (-3.68289e-141)}
; Y = -1.5587844774191494945370095592807047069072723388671875p-643 {- 2516541564285299 -643 (-4.2707e-194)}
; -1.403450638774651704210327807231806218624114990234375p-467 < -1.5587844774191494945370095592807047069072723388671875p-643 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101100 #b0110011101001000100010101000001100010110011000100110)))
(assert (= y (fp #b1 #b00101111100 #b1000111100001100011111111110000000000111000101110011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
