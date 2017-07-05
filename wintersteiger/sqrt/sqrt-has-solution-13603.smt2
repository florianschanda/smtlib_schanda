(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6491612608323078514871440347633324563503265380859375p-674 {- 2923562412387743 -674 (-2.104e-203)}
; -1.6491612608323078514871440347633324563503265380859375p-674 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101011101 #b1010011000101111011011101011000100011010110110011111)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
