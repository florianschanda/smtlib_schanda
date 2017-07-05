(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.03659728653215754690108951763249933719635009765625p-943 {- 164819525988996 -943 (-1.3942e-284)}
; -1.03659728653215754690108951763249933719635009765625p-943 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001010000 #b0000100101011110011100001001010011000111001010000100)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
