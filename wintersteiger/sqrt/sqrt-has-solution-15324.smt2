(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1496556681348588657698428505682386457920074462890625p432 {- 673989211246033 432 (-1.27505e+130)}
; -1.1496556681348588657698428505682386457920074462890625p432 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110101111 #b0010011001001111110101010111100001001100110111010001)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
