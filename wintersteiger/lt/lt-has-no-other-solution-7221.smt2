(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.7570060122788329071141788517707027494907379150390625p579 {+ 3409251994816177 579 (3.47649e+174)}
; -oo < 1.7570060122788329071141788517707027494907379150390625p579 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b11001000010 #b1100000111001011001001010110000110011100111010110001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
