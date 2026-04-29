(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = NaN {+ 3072775768938953 1024 (1.#QNAN)}
; Y = -1.1486303192013280760619409193168394267559051513671875p-502 {- 669371450171059 -502 (-8.77248e-152)}
; NaN / -1.1486303192013280760619409193168394267559051513671875p-502 == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : + 3072775768938953 1024 (1.#QNAN) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b1 #b01000001001 #b0010011000001100101000101111100000101001111010110011)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
