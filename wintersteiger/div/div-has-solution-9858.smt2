(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7474204881623538465618139525759033858776092529296875p916 {- 3366082631977051 916 (-9.67996e+275)}
; Y = -1.069946453270087971532120718620717525482177734375p-517 {- 315010820883056 -517 (-2.49376e-156)}
; -1.7474204881623538465618139525759033858776092529296875p916 / -1.069946453270087971532120718620717525482177734375p-517 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110010011 #b1011111101010110111100101111100100000100100001011011)))
(assert (= y (fp #b1 #b00111111010 #b0001000111101000000000101100000101000100001001110000)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
