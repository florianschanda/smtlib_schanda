(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9429964990050827555734258567099459469318389892578125p124 {- 4246878681530973 124 (-4.1323e+037)}
; -1.9429964990050827555734258567099459469318389892578125p124 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001111011 #b1111000101101000001101111111001101111000001001011101)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
