(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.61265174585840842524930849322117865085601806640625p-12 {+ 2759138174355812 -12 (0.000393714)}
; Y = +oo {+ 0 1024 (1.#INF)}
; Z = 1.5845514050956912566192613667226396501064300537109375p652 {+ 2632585490167855 652 (2.96117e+196)}
; 1.61265174585840842524930849322117865085601806640625p-12 x +oo 1.5845514050956912566192613667226396501064300537109375p652 == +oo
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
(assert (= x (fp #b0 #b01111110011 #b1001110011010110101111101010110001001100100101100100)))
(assert (= y (_ +oo 11 53)))
(assert (= z (fp #b0 #b11010001011 #b1001010110100101001010010010111110110111100000101111)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
