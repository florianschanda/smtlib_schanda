(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.6217404797620151857273640416678972542285919189453125p708 {+ 2800070192977365 708 (2.18383e+213)}
; +oo % 1.6217404797620151857273640416678972542285919189453125p708 == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b11011000011 #b1001111100101010011000100101001100101101010111010101)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
