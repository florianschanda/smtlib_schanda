(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1249287991898426763981433396111242473125457763671875p-867 {- 562629293479219 -867 (-1.14319e-261)}
; Y = -1.251886138896443068091457462287507951259613037109375p692 {- 1134394321273814 692 (-2.5723e+208)}
; -1.1249287991898426763981433396111242473125457763671875p-867 / -1.251886138896443068091457462287507951259613037109375p692 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011100 #b0001111111111011010101010111001011011001010100110011)))
(assert (= y (fp #b1 #b11010110011 #b0100000001111011100111000010100011100000001111010110)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
