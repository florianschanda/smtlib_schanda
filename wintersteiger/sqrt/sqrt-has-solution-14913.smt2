(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2189750445768605668916961803915910422801971435546875p-8 {- 986175929159787 -8 (-0.00476162)}
; -1.2189750445768605668916961803915910422801971435546875p-8 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111110111 #b0011100000001110101111111001111100011001000001101011)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
