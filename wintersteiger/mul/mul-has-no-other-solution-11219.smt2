(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.79161223198367025588595424778759479522705078125p121 {- 3565104552983584 121 (-4.76292e+036)}
; Y = -1.096906929395085938949705450795590877532958984375p-779 {- 436430011113328 -779 (-3.44987e-235)}
; -1.79161223198367025588595424778759479522705078125p121 * -1.096906929395085938949705450795590877532958984375p-779 == 1.9652318720518839878508288165903650224208831787109375p-658
; [HW: 1.9652318720518839878508288165903650224208831787109375p-658] 

; mpf : + 4347017899298991 -658
; mpfd: + 4347017899298991 -658 (1.64315e-198) class: Pos. norm. non-zero
; hwf : + 4347017899298991 -658 (1.64315e-198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001111000 #b1100101010100111000110010110011101111011110000100000)))
(assert (= y (fp #b1 #b00011110100 #b0001100011001110111001000111110010000001111101110000)))
(assert (= r (fp #b0 #b00101101101 #b1111011100011001011011111001101110000101000010101111)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
