(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.90002342012704872331596561707556247711181640625p425 {- 4053345139508896 425 (-1.64629e+128)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.90002342012704872331596561707556247711181640625p425 = -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110101000 #b1110011001100111111011110101001100010100011010100000)))
(assert (= y (_ -oo 11 53)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
