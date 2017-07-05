(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = NaN {- 2055057046519956 1024 (-1.#SNAN)}
; NaN | == NaN
; [HW: NaN] 

; mpf : + 2055057046519956 1024
; mpfd: + 2055057046519956 1024 (1.#SNAN) class: NaN
; hwf : + 2055057046519956 1024 (1.#SNAN) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
