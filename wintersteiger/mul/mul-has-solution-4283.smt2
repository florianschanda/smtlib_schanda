(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4017017964085012327046797508955933153629302978515625p-706 {+ 1809104060619385 -706 (4.16369e-213)}
; Y = -1.5934861243875404479553026249050162732601165771484375p-897 {- 2672823888641287 -897 (-1.50814e-270)}
; 1.4017017964085012327046797508955933153629302978515625p-706 * -1.5934861243875404479553026249050162732601165771484375p-897 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100111101 #b0110011011010101111011011100111001010001101001111001)))
(assert (= y (fp #b1 #b00001111110 #b1001011111101110101101001110011011011111110100000111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
