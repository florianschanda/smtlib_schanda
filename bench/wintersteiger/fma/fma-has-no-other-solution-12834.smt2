(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9822148620808681673821638469235040247440338134765625p734 {+ 4423502486865161 734 (1.7913e+221)}
; Y = 1.815130964308794059292040401487611234188079833984375p459 {+ 3671023507119238 459 (2.70194e+138)}
; Z = -1.808264386129661005497837322764098644256591796875p-827 {- 3640099188190384 -827 (-2.02048e-249)}
; 1.9822148620808681673821638469235040247440338134765625p734 x 1.815130964308794059292040401487611234188079833984375p459 -1.808264386129661005497837322764098644256591796875p-827 == +oo
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
(assert (= x (fp #b0 #b11011011101 #b1111101101110010011011101110011001001000010100001001)))
(assert (= y (fp #b0 #b10111001010 #b1101000010101100011011000100000110101001110010000110)))
(assert (= z (fp #b1 #b00011000100 #b1100111011101010011010100011000011110010110010110000)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
