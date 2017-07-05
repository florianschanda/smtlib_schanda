(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.9322913818038098821006087746354751288890838623046875p257 {- 4198667119692363 257 (-4.47488e+077)}
; +oo % -1.9322913818038098821006087746354751288890838623046875p257 == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b10100000000 #b1110111010101010101001011110001100110000101001001011)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
