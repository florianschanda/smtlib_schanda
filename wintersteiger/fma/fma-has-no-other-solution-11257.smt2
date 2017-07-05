(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9635852797510848777307046475470997393131256103515625p49 {+ 4339602306826681 49 (1.1054e+015)}
; Y = -1.182317689315269593208768128533847630023956298828125p-270 {- 821085877663298 -270 (-6.23211e-082)}
; Z = +oo {+ 0 1024 (1.#INF)}
; 1.9635852797510848777307046475470997393131256103515625p49 x -1.182317689315269593208768128533847630023956298828125p-270 +oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110000 #b1111011010101101100001100101111101110000000110111001)))
(assert (= y (fp #b1 #b01011110001 #b0010111010101100010111110100000100010111011001000010)))
(assert (= z (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
