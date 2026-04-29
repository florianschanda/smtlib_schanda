(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.96276681442652733977638490614481270313262939453125p413 {- 4335916266695988 413 (-4.152e+124)}
; Y = +oo {+ 0 1024 (1.#INF)}
; Z = 1.569029148141314777831212268210947513580322265625p-753 {+ 2562679459532176 -753 (3.31165e-227)}
; -1.96276681442652733977638490614481270313262939453125p413 x +oo 1.569029148141314777831212268210947513580322265625p-753 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110011100 #b1111011001110111111000101100110110100010110100110100)))
(assert (= y (_ +oo 11 53)))
(assert (= z (fp #b0 #b00100001110 #b1001000110101011111001001110110110111100110110010000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
