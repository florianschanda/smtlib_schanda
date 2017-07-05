(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4322700595956019409271675613126717507839202880859375p-732 {- 1946771279318175 -732 (-6.33969e-221)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.4322700595956019409271675613126717507839202880859375p-732 > +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100100011 #b0110111010101001010000000010100100000000110010011111)))
(assert (= y (_ +oo 11 53)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
