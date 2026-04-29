(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.924039800067858241305884803296066820621490478515625p434 {- 4161505299261114 434 (-8.53556e+130)}
; Z = -1.491460075041266097883863039896823465824127197265625p-276 {- 2213339410823322 -276 (-1.22838e-083)}
; -oo x -1.924039800067858241305884803296066820621490478515625p434 -1.491460075041266097883863039896823465824127197265625p-276 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b10110110001 #b1110110010001101110111110101000101111110011010111010)))
(assert (= z (fp #b1 #b01011101011 #b0111110111010000010100111101010110010111100010011010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
