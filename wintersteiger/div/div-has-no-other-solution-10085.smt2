(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3281688967908740206524953464395366609096527099609375p483 {+ 1477941321301967 483 (3.31697e+145)}
; Y = 1.305750433985567671157923541613854467868804931640625p-693 {+ 1376977540565770 -693 (3.17741e-209)}
; 1.3281688967908740206524953464395366609096527099609375p483 / 1.305750433985567671157923541613854467868804931640625p-693 == 1.9999999999999997779553950749686919152736663818359375p1023
; [HW: 1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : + 4503599627370495 1023
; mpfd: + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero
; hwf : + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100010 #b0101010000000010111000000111011101000111111111001111)))
(assert (= y (fp #b0 #b00101001010 #b0100111001000101101010010001001010110100101100001010)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
