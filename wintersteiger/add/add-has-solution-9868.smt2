(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.970883255786314958157845467212609946727752685546875p-227 {+ 4372469468979502 -227 (9.13802e-069)}
; -oo + 1.970883255786314958157845467212609946727752685546875p-227 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b01100011100 #b1111100010001011110011100001011111010110000100101110)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
