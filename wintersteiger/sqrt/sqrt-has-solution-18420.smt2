(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.56644739813169397990577635937370359897613525390625p-235 {- 2551052291150884 -235 (-2.83705e-071)}
; -1.56644739813169397990577635937370359897613525390625p-235 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100010100 #b1001000100000010101100100101100111100001010000100100)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
