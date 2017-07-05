(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2867590581006596028856847624410875141620635986328125p325 {- 1291447987207245 325 (-8.7952e+097)}
; -1.2867590581006596028856847624410875141620635986328125p325 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101000100 #b0100100101101001000010101010100001011111110001001101)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
