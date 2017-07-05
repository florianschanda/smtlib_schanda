(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0930608788506634976300802009063772857189178466796875p977 {+ 419108939314619 977 (1.39621e+294)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.0930608788506634976300802009063772857189178466796875p977 - -oo == +oo
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
(assert (= x (fp #b0 #b11111010000 #b0001011111010010110101100111011100110011010110111011)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
