(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8685506504016677897794806995079852640628814697265625p-432 {- 3911604385501353 -432 (-1.68479e-130)}
; -1.8685506504016677897794806995079852640628814697265625p-432 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001001111 #b1101111001011001010101011101111001100101000010101001)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
