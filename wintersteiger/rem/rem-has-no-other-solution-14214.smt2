(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1762515473594643555799166279030032455921173095703125p-335 {- 793766403011557 -335 (-1.68055e-101)}
; Y = +zero {+ 0 -1023 (0)}
; -1.1762515473594643555799166279030032455921173095703125p-335 % +zero == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010110000 #b0010110100011110110100100100011111000111001111100101)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
