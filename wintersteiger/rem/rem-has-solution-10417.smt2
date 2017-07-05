(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3224713657586832926682518518646247684955596923828125p-749 {- 1452281922668461 -749 (-4.46601e-226)}
; Y = +zero {+ 0 -1023 (0)}
; -1.3224713657586832926682518518646247684955596923828125p-749 % +zero == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100010010 #b0101001010001101011110111100000111010100011110101101)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
