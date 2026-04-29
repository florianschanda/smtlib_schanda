(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0161685871596859431775783377815969288349151611328125p210 {- 72816843107469 210 (-1.67211e+063)}
; Y = 1.3462981836360798926222059890278615057468414306640625p864 {+ 1559588370782529 864 (1.65599e+260)}
; -1.0161685871596859431775783377815969288349151611328125p210 > 1.3462981836360798926222059890278615057468414306640625p864 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011010001 #b0000010000100011100111111110000100010010110010001101)))
(assert (= y (fp #b0 #b11101011111 #b0101100010100110111111110110110101100001100101000001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
