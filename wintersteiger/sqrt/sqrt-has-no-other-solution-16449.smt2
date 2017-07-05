(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7784039633756678622233948772191070020198822021484375p191 {- 3505619799402375 191 (-5.58161e+057)}
; -1.7784039633756678622233948772191070020198822021484375p191 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111110 #b1100011101000101011110110110110111000110011110000111)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
