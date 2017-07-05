(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3488156553547161475847815381712280213832855224609375p999 {+ 1570926055476495 999 (7.22634e+300)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.3488156553547161475847815381712280213832855224609375p999 m +oo == 1.3488156553547161475847815381712280213832855224609375p999
; [HW: 1.3488156553547161475847815381712280213832855224609375p999] 

; mpf : + 1570926055476495 999
; mpfd: + 1570926055476495 999 (7.22634e+300) class: Pos. norm. non-zero
; hwf : + 1570926055476495 999 (7.22634e+300) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111100110 #b0101100101001011111110111001100000010100110100001111)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b0 #b11111100110 #b0101100101001011111110111001100000010100110100001111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
