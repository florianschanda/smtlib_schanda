(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.151666327502730791110252539510838687419891357421875p-159 {- 683044416025950 -159 (-1.576e-048)}
; Y = +zero {+ 0 -1023 (0)}
; -1.151666327502730791110252539510838687419891357421875p-159 % +zero == NaN
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
(assert (= x (fp #b1 #b01101100000 #b0010011011010011100110101011110010000111010101011110)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
