(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1783082653153229557574377395212650299072265625p789 {+ 803029037231168 789 (3.83641e+237)}
; Y = 1.059715369977821008973251082352362573146820068359375p238 {+ 268934117980406 238 (4.68089e+071)}
; Z = -1.158869606563851295533140728366561233997344970703125p-87 {- 715485100921458 -87 (-7.48902e-027)}
; 1.1783082653153229557574377395212650299072265625p789 x 1.059715369977821008973251082352362573146820068359375p238 -1.158869606563851295533140728366561233997344970703125p-87 == +oo
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
(assert (= x (fp #b0 #b11100010100 #b0010110110100101100111000100100000100010110001000000)))
(assert (= y (fp #b0 #b10011101101 #b0000111101001001100000011010100100011111100011110110)))
(assert (= z (fp #b1 #b01110101000 #b0010100010101011101011011011010010000101001001110010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
