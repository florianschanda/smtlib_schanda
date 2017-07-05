(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.69233571836416007982961673405952751636505126953125p155 {- 3118002883240116 155 (-7.72922e+046)}
; -1.69233571836416007982961673405952751636505126953125p155 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010011010 #b1011000100111100111010011110010000111010000010110100)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
