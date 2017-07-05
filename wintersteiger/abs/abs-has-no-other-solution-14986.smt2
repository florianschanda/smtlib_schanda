(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.778922220804135978511339999386109411716461181640625p-154 {+ 3507953823364106 -154 (7.79e-047)}
; 1.778922220804135978511339999386109411716461181640625p-154 | == 1.778922220804135978511339999386109411716461181640625p-154
; [HW: 1.778922220804135978511339999386109411716461181640625p-154] 

; mpf : + 3507953823364106 -154
; mpfd: + 3507953823364106 -154 (7.79e-047) class: Pos. norm. non-zero
; hwf : + 3507953823364106 -154 (7.79e-047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101100101 #b1100011101100111011100100101100001111011010000001010)))
(assert (= r (fp #b0 #b01101100101 #b1100011101100111011100100101100001111011010000001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
