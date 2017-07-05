(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1402942201323440496452121806214563548564910888671875p1005 {+ 631828997510259 1005 (3.90987e+302)}
; Y = +zero {+ 0 -1023 (0)}
; 1.1402942201323440496452121806214563548564910888671875p1005 = +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101100 #b0010001111101010010100100110111101001001010001110011)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
