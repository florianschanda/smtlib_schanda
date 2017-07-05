(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.16895850096716547028563581989146769046783447265625p-251 {- 760921441996804 -251 (-3.2305e-076)}
; -1.16895850096716547028563581989146769046783447265625p-251 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100000100 #b0010101101000000110111010100010000001001000000000100)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
