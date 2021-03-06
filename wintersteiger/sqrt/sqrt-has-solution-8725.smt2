(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2166788799303926982275925183785147964954376220703125p743 {- 975834922913573 743 (-5.62941e+223)}
; -1.2166788799303926982275925183785147964954376220703125p743 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011100110 #b0011011101111000010001000101111100001000111100100101)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
