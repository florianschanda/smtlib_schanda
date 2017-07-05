(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0256797813639855210254836492822505533695220947265625p-456 {- 115651453781801 -456 (-5.51231e-138)}
; -1.0256797813639855210254836492822505533695220947265625p-456 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000110111 #b0000011010010010111100110011110100100000011100101001)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
