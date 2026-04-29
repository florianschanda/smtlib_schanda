(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3461894602752859650962591331335715949535369873046875p945 {+ 1559098724295371 945 (4.00361e+284)}
; 1.3461894602752859650962591331335715949535369873046875p945 S == 1.64084701314612857458996586501598358154296875p472
; [HW: 1.64084701314612857458996586501598358154296875p472] 

; mpf : + 2886118369606400 472
; mpfd: + 2886118369606400 472 (2.0009e+142) class: Pos. norm. non-zero
; hwf : + 2886118369606400 472 (2.0009e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110110000 #b0101100010011111110111110101101000011010001011001011)))
(assert (= r (fp #b0 #b10111010111 #b1010010000001110100011001100001100110011101100000000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
