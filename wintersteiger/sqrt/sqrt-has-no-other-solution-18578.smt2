(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0738487227399990953102815183228813111782073974609375p-802 {- 332585080213647 -802 (-4.02612e-242)}
; -1.0738487227399990953102815183228813111782073974609375p-802 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011011101 #b0001001011100111101111111111100100000101000010001111)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
