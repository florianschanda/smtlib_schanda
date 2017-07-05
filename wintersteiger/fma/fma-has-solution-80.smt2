(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2435680081602402680118757416494190692901611328125p910 {+ 1096932790789832 910 (1.07638e+274)}
; Y = 1.587692975028132114090340110124088823795318603515625p627 {+ 2646733863344954 627 (8.84247e+188)}
; Z = -1.7595132762775909096575333023793064057826995849609375p-849 {- 3420543708026703 -849 (-4.68734e-256)}
; 1.2435680081602402680118757416494190692901611328125p910 x 1.587692975028132114090340110124088823795318603515625p627 -1.7595132762775909096575333023793064057826995849609375p-849 == 1.9999999999999997779553950749686919152736663818359375p1023
; [HW: 1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : + 4503599627370495 1023
; mpfd: + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero
; hwf : + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001101 #b0011111001011010011110010001010101100110011011001000)))
(assert (= y (fp #b0 #b11001110010 #b1001011001110011000010111111101111010101101100111010)))
(assert (= z (fp #b1 #b00010101110 #b1100001001101111011101100100101001111101011101001111)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
