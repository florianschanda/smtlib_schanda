(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.604350872861624477394570931210182607173919677734375p483 {- 2721754365820646 483 (-4.0067e+145)}
; -1.604350872861624477394570931210182607173919677734375p483 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111100010 #b1001101010110110101111010010001000111111111011100110)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
