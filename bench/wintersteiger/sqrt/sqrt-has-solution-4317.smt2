(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.83432216588715135685561108402907848358154296875p846 {+ 3757452995396320 846 (8.607e+254)}
; 1.83432216588715135685561108402907848358154296875p846 S == 1.3543715021688662591969887216691859066486358642578125p423
; [HW: 1.3543715021688662591969887216691859066486358642578125p423] 

; mpf : + 1595947365118429 423
; mpfd: + 1595947365118429 423 (2.93377e+127) class: Pos. norm. non-zero
; hwf : + 1595947365118429 423 (2.93377e+127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001101 #b1101010110010110001000110011000011010000001011100000)))
(assert (= r (fp #b0 #b10110100110 #b0101101010111000000101110011110001110011000111011101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
