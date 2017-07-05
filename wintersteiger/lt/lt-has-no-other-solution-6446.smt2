(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.127011452784044021058207363239489495754241943359375p-601 {- 572008731430006 -601 (-1.358e-181)}
; Y = -1.3670595526566116095779079842031933367252349853515625p-183 {- 1653089264567097 -183 (-1.11506e-055)}
; -1.127011452784044021058207363239489495754241943359375p-601 < -1.3670595526566116095779079842031933367252349853515625p-183 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110100110 #b0010000010000011110100101001001111101100110001110110)))
(assert (= y (fp #b1 #b01101001000 #b0101110111110111100111010110011001011000001100111001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
