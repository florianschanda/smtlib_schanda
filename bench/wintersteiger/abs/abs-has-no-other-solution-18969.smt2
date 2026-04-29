(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1629968469622087301473811749019660055637359619140625p-592 {+ 734072539241569 -592 (7.17499e-179)}
; 1.1629968469622087301473811749019660055637359619140625p-592 | == 1.1629968469622087301473811749019660055637359619140625p-592
; [HW: 1.1629968469622087301473811749019660055637359619140625p-592] 

; mpf : + 734072539241569 -592
; mpfd: + 734072539241569 -592 (7.17499e-179) class: Pos. norm. non-zero
; hwf : + 734072539241569 -592 (7.17499e-179) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110101111 #b0010100110111010001010010100111100001101110001100001)))
(assert (= r (fp #b0 #b00110101111 #b0010100110111010001010010100111100001101110001100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
