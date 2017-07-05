(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8470015293177961535064923737081699073314666748046875p-676 {+ 3814555771817867 -676 (5.89102e-204)}
; Y = -1.7175719272034835061191415661596693098545074462890625p-410 {- 3231656663965137 -410 (-6.49556e-124)}
; Z = -1.8428038295194937301602067236672155559062957763671875p391 {- 3795651012570419 391 (-9.2941e+117)}
; 1.8470015293177961535064923737081699073314666748046875p-676 x -1.7175719272034835061191415661596693098545074462890625p-410 -1.8428038295194937301602067236672155559062957763671875p391 == -1.84280382951949395220481164869852364063262939453125p391
; [HW: -1.84280382951949395220481164869852364063262939453125p391] 

; mpf : - 3795651012570420 391
; mpfd: - 3795651012570420 391 (-9.2941e+117) class: Neg. norm. non-zero
; hwf : - 3795651012570420 391 (-9.2941e+117) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011011 #b1101100011010101000101111001110000010100111110001011)))
(assert (= y (fp #b1 #b01001100101 #b1011011110110010110010110011011111011101110111010001)))
(assert (= z (fp #b1 #b10110000110 #b1101011111000001111111011110010010111010110100110011)))
(assert (= r (fp #b1 #b10110000110 #b1101011111000001111111011110010010111010110100110100)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
