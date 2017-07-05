(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.7398002467266795445510751960682682693004608154296875p-776 {+ 3331764115486875 -776 (4.37747e-234)}
; -oo < 1.7398002467266795445510751960682682693004608154296875p-776 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b00011110111 #b1011110101100011100011001000100101000011100010011011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
