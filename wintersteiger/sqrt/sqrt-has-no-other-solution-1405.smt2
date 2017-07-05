(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6358199521552692079495727739413268864154815673828125p919 {- 2863478499601197 919 (-7.24939e+276)}
; -1.6358199521552692079495727739413268864154815673828125p919 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110010110 #b1010001011000101000110001010110010100110101100101101)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
