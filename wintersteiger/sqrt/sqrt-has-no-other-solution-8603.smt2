(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4064781545675570928466413533897139132022857666015625p-309 {+ 1830614865444697 -309 (1.34854e-093)}
; 1.4064781545675570928466413533897139132022857666015625p-309 S == 1.67718702270650599217560738907195627689361572265625p-155
; [HW: 1.67718702270650599217560738907195627689361572265625p-155] 

; mpf : + 3049779223121156 -155
; mpfd: + 3049779223121156 -155 (3.67225e-047) class: Pos. norm. non-zero
; hwf : + 3049779223121156 -155 (3.67225e-047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011001010 #b0110100000001110111100111100110001100111111101011001)))
(assert (= r (fp #b0 #b01101100100 #b1010110101011100001000001111001111001100110100000100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
