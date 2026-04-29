(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.129189838983890137313892410020343959331512451171875p287 {+ 581819310707902 287 (2.80786e+086)}
; 1.129189838983890137313892410020343959331512451171875p287 S == 1.5027906301171098935043346500606276094913482666015625p143
; [HW: 1.5027906301171098935043346500606276094913482666015625p143] 

; mpf : + 2264367694440793 143
; mpfd: + 2264367694440793 143 (1.67567e+043) class: Pos. norm. non-zero
; hwf : + 2264367694440793 143 (1.67567e+043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011110 #b0010000100010010100101011101010101101001010010111110)))
(assert (= r (fp #b0 #b10010001110 #b1000000010110110111000110000000100010110100101011001)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
