(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = NaN {+ 3748745877644465 1024 (1.#QNAN)}
; Y = 1.6087319502176971042217701324261724948883056640625p0 {+ 2741484984168936 0 (1.60873)}
; NaN % 1.6087319502176971042217701324261724948883056640625p0 == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : + 3748745877644465 1024 (1.#QNAN) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b0 #b01111111111 #b1001101111010101110110110110101000110111000111101000)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
