(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.490378748380576379162221201113425195217132568359375p487 {+ 2208469548477174 487 (5.95531e+146)}
; Y = -1.5005791511267663196349531062878668308258056640625p-822 {- 2254408078483944 -822 (-5.3654e-248)}
; Z = +oo {+ 0 1024 (1.#INF)}
; 1.490378748380576379162221201113425195217132568359375p487 x -1.5005791511267663196349531062878668308258056640625p-822 +oo == +oo
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
(assert (= x (fp #b0 #b10111100110 #b0111110110001001011101100010111011110010101011110110)))
(assert (= y (fp #b1 #b00011001001 #b1000000000100101111101001000101100100110000111101000)))
(assert (= z (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
