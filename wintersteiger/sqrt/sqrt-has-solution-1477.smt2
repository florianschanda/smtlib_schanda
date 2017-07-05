(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.30780892585411923079163898364640772342681884765625p-838 {- 1386248163777924 -838 (-7.13523e-253)}
; -1.30780892585411923079163898364640772342681884765625p-838 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010111001 #b0100111011001100100100001101010111110101110110000100)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
