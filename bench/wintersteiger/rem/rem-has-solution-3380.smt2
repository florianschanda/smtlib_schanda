(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.1879237847112837922480821362114511430263519287109375p-375 {- 846333486799791 -375 (-1.54362e-113)}
; +oo % -1.1879237847112837922480821362114511430263519287109375p-375 == NaN
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
(assert (= y (fp #b1 #b01010001000 #b0011000000011011110001011110110101111001101110101111)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
