(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.5846530737037805014466584907495416700839996337890625p830 {- 2633043364873361 830 (-1.13457e+250)}
; -oo > -1.5846530737037805014466584907495416700839996337890625p830 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b11100111101 #b1001010110101011110100101110011100010000010010010001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
