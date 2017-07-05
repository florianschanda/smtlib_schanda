(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1326663921334862994427794546936638653278350830078125p-51 {- 597476314176957 -51 (-5.03005e-016)}
; Y = -oo {- 0 1024 (-1.#INF)}
; Z = -1.884368241242714514527278879540972411632537841796875p978 {- 3982840481718990 978 (-4.81395e+294)}
; -1.1326663921334862994427794546936638653278350830078125p-51 x -oo -1.884368241242714514527278879540972411632537841796875p978 == +oo
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
(assert (= x (fp #b1 #b01111001100 #b0010000111110110011011001011011101111101110110111101)))
(assert (= y (_ -oo 11 53)))
(assert (= z (fp #b1 #b11111010001 #b1110001001100101111101010000000111000010001011001110)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
