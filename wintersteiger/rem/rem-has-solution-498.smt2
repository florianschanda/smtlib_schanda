(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.8598396047774230499527448046137578785419464111328125p-219 {- 3872373323673997 -219 (-2.20753e-066)}
; +oo % -1.8598396047774230499527448046137578785419464111328125p-219 == NaN
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
(assert (= y (fp #b1 #b01100100100 #b1101110000011110011100101100011001010011000110001101)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
