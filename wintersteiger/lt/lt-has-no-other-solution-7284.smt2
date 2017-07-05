(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.709483805718346349777903014910407364368438720703125p-350 {+ 3195231003058546 -350 (7.45361e-106)}
; Y = 1.0503493861937880371471010221284814178943634033203125p937 {+ 226753476900677 937 (1.22022e+282)}
; 1.709483805718346349777903014910407364368438720703125p-350 < 1.0503493861937880371471010221284814178943634033203125p937 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010100001 #b1011010110100000101110110000111010011010000101110010)))
(assert (= y (fp #b0 #b11110101000 #b0000110011100011101100101000011100010011011101000101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
