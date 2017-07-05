(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.055919008086902977083809673786163330078125p-998 {+ 251836823983104 -998 (3.9418e-301)}
; 1.055919008086902977083809673786163330078125p-998 S == 1.0275791979633017714235165840364061295986175537109375p-499
; [HW: 1.0275791979633017714235165840364061295986175537109375p-499] 

; mpf : + 124205665670703 -499
; mpfd: + 124205665670703 -499 (6.27838e-151) class: Pos. norm. non-zero
; hwf : + 124205665670703 -499 (6.27838e-151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000011001 #b0000111001010000101101010100011011110101010000000000)))
(assert (= r (fp #b0 #b01000001100 #b0000011100001111011011100010100101001101011000101111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
