(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.033984876088613891198519922909326851367950439453125p-190 {- 153054275288914 -190 (-6.58893e-058)}
; -1.033984876088613891198519922909326851367950439453125p-190 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101000001 #b0000100010110011001110111001101101011011111101010010)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
