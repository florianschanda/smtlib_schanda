(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.3015656383236506865586079584318213164806365966796875p74 {- 1358130896382139 74 (-2.45859e+022)}
; -oo > -1.3015656383236506865586079584318213164806365966796875p74 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b10001001001 #b0100110100110011011001111101101000110010100010111011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
