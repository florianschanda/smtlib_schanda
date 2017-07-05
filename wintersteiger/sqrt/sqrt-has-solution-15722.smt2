(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1110769059120386703654048687894828617572784423828125p-200 {- 500245912074925 -200 (-6.91425e-061)}
; -1.1110769059120386703654048687894828617572784423828125p-200 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100110111 #b0001110001101111100010010011111000111011101010101101)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
