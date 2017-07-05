(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6570287343261826951135162744321860373020172119140625p-898 {- 2958994363083105 -898 (-7.84141e-271)}
; -1.6570287343261826951135162744321860373020172119140625p-898 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001111101 #b1010100000110011000010001111111001110110100101100001)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
