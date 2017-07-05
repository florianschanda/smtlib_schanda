(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.43553117329667134782766879652626812458038330078125p126 {+ 1961458029767124 126 (1.22121e+038)}
; Y = 1.497401339931097918878322161617688834667205810546875p801 {+ 2240096489167278 801 (1.99694e+241)}
; 1.43553117329667134782766879652626812458038330078125p126 = 1.497401339931097918878322161617688834667205810546875p801 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111101 #b0110111101111110111110001001000110110010100111010100)))
(assert (= y (fp #b0 #b11100100000 #b0111111101010101101100011011011111111101100110101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
