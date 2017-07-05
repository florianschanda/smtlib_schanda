(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3823879590475305345620427033281885087490081787109375p388 {- 1722122269877423 388 (-8.71502e+116)}
; -1.3823879590475305345620427033281885087490081787109375p388 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110000011 #b0110000111100100001011010110001001111110010010101111)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
