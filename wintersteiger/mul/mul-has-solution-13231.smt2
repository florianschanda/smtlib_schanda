(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.725196182680255763131071944371797144412994384765625p325 {- 3265993258089306 325 (-1.1792e+098)}
; Y = -1.055321040089470585598974139429628849029541015625p358 {- 249143815532688 358 (-6.19617e+107)}
; -1.725196182680255763131071944371797144412994384765625p325 * -1.055321040089470585598974139429628849029541015625p358 == 1.8206358298645117788083780396846123039722442626953125p683
; [HW: 1.8206358298645117788083780396846123039722442626953125p683] 

; mpf : + 3695815217584693 683
; mpfd: + 3695815217584693 683 (7.30651e+205) class: Pos. norm. non-zero
; hwf : + 3695815217584693 683 (7.30651e+205) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101000100 #b1011100110100110011101001111111111001011101101011010)))
(assert (= y (fp #b1 #b10101100101 #b0000111000101001100001010000100111110111000010010000)))
(assert (= r (fp #b0 #b11010101010 #b1101001000010101001100001001001100110001101000110101)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
