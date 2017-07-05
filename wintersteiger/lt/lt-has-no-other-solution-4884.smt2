(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.145774011081064802652917933301068842411041259765625p-965 {+ 656507781984986 -965 (3.67412e-291)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.145774011081064802652917933301068842411041259765625p-965 < -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000111010 #b0010010101010001011100100001001000110011001011011010)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
