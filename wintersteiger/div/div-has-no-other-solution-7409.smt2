(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.968992426058866929139412604854442179203033447265625p56 {+ 4363953928923546 56 (1.41881e+017)}
; Y = -1.7852643378156811682089255555183626711368560791015625p879 {- 3536516179174041 879 (-7.19563e+264)}
; 1.968992426058866929139412604854442179203033447265625p56 / -1.7852643378156811682089255555183626711368560791015625p879 == -1.10291366065597973289413857855834066867828369140625p-823
; [HW: -1.10291366065597973289413857855834066867828369140625p-823] 

; mpf : - 463481923781604 -823
; mpfd: - 463481923781604 -823 (-1.97176e-248) class: Neg. norm. non-zero
; hwf : - 463481923781604 -823 (-1.97176e-248) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110111 #b1111100000001111111000110011101111111110100110011010)))
(assert (= y (fp #b1 #b11101101110 #b1100100100000111000101010110100110100010001010011001)))
(assert (= r (fp #b1 #b00011001000 #b0001101001011000100011001011011011010100001111100100)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
