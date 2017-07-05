(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7623584101032978566081510507501661777496337890625p728 {- 3433357051663976 728 (-2.48846e+219)}
; Y = NaN {- 1952466740516107 1024 (-1.#SNAN)}
; -1.7623584101032978566081510507501661777496337890625p728 m NaN == -1.7623584101032978566081510507501661777496337890625p728
; [HW: -1.7623584101032978566081510507501661777496337890625p728] 

; mpf : - 3433357051663976 728
; mpfd: - 3433357051663976 728 (-2.48846e+219) class: Neg. norm. non-zero
; hwf : - 3433357051663976 728 (-2.48846e+219) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011010111 #b1100001100101001111010111011011100111001011001101000)))
(assert (= y (_ NaN 11 53)))
(assert (= r (fp #b1 #b11011010111 #b1100001100101001111010111011011100111001011001101000)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
