(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7808749121881508603593147199717350304126739501953125p-1005 {- 3516747963553525 -1005 (-5.19383e-303)}
; -1.7808749121881508603593147199717350304126739501953125p-1005 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000010010 #b1100011111100111011010110001001000011101011011110101)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
