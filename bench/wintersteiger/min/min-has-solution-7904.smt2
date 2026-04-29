(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.865210068257964426408079816610552370548248291015625p667 {+ 3896559741003770 667 (1.14218e+201)}
; +oo m 1.865210068257964426408079816610552370548248291015625p667 == 1.865210068257964426408079816610552370548248291015625p667
; [HW: 1.865210068257964426408079816610552370548248291015625p667] 

; mpf : + 3896559741003770 667
; mpfd: + 3896559741003770 667 (1.14218e+201) class: Pos. norm. non-zero
; hwf : + 3896559741003770 667 (1.14218e+201) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b11010011010 #b1101110101111110011010000011001101010110011111111010)))
(assert (= r (fp #b0 #b11010011010 #b1101110101111110011010000011001101010110011111111010)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
