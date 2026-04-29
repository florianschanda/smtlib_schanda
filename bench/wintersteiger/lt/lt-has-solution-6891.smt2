(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2114515022397196464254420789075084030628204345703125p623 {+ 952292906693733 623 (4.2169e+187)}
; Y = 1.0265927554438409874393300924566574394702911376953125p232 {+ 119763123507637 232 (7.08528e+069)}
; 1.2114515022397196464254420789075084030628204345703125p623 < 1.0265927554438409874393300924566574394702911376953125p232 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101110 #b0011011000100001101011111000011011001111010001100101)))
(assert (= y (fp #b0 #b10011100111 #b0000011011001110110010000110011011110001000110110101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
