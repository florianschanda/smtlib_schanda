(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.855576902720100118671098243794403970241546630859375p359 {+ 3853175820277046 359 (2.17895e+108)}
; Y = 1.0328093793140127321095178558607585728168487548828125p343 {+ 147760308452845 343 (1.85058e+103)}
; Z = -1.1737063752019565310291682180832140147686004638671875p-979 {- 782303966631411 -979 (-2.29717e-295)}
; 1.855576902720100118671098243794403970241546630859375p359 x 1.0328093793140127321095178558607585728168487548828125p343 -1.1737063752019565310291682180832140147686004638671875p-979 == 1.916457229167764619859326558071188628673553466796875p702
; [HW: 1.916457229167764619859326558071188628673553466796875p702] 

; mpf : + 4127356435780942 702
; mpfd: + 4127356435780942 702 (4.03233e+211) class: Pos. norm. non-zero
; hwf : + 4127356435780942 702 (4.03233e+211) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101100110 #b1101101100000111000101101000000001100101010100110110)))
(assert (= y (fp #b0 #b10101010110 #b0000100001100110001100100000101100100111110111101101)))
(assert (= z (fp #b1 #b00000101100 #b0010110001111000000001010110000010011001010111110011)))
(assert (= r (fp #b0 #b11010111101 #b1110101010011100111100001110001101110101010101001110)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
